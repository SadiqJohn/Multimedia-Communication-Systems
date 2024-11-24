function [block] = Inv_ZigZag(DC, AC, block_X, block_Y)
	block = zeros(block_X*8, block_Y*8);

	for blockNum_X=1:block_X
		i = (blockNum_X-1)*8;
		for blockNum_Y=1:block_Y
			j = (blockNum_Y-1)*8;

			temp = DC(blockNum_X, blockNum_Y);

			block(i+1:i+8, j+1:j+8) = [...
				temp AC(blockNum_X, blockNum_Y, 1)  AC(blockNum_X, blockNum_Y, 5)...
                AC(blockNum_X, blockNum_Y, 6)  AC(blockNum_X, blockNum_Y, 14)...
                AC(blockNum_X, blockNum_Y, 15) AC(blockNum_X, blockNum_Y, 27)...
                AC(blockNum_X, blockNum_Y, 28);...
                AC(blockNum_X, blockNum_Y, 2) AC(blockNum_X, blockNum_Y, 4)...
                AC(blockNum_X, blockNum_Y, 7) AC(blockNum_X, blockNum_Y, 13)...
                AC(blockNum_X, blockNum_Y, 16) AC(blockNum_X, blockNum_Y, 26)...
                AC(blockNum_X, blockNum_Y, 29) AC(blockNum_X, blockNum_Y, 42);...
                AC(blockNum_X, blockNum_Y, 3) AC(blockNum_X, blockNum_Y, 8)...
                AC(blockNum_X, blockNum_Y, 12) AC(blockNum_X, blockNum_Y, 17)...
                AC(blockNum_X, blockNum_Y, 25) AC(blockNum_X, blockNum_Y, 30)...
                AC(blockNum_X, blockNum_Y, 41) AC(blockNum_X, blockNum_Y, 43);...
				AC(blockNum_X, blockNum_Y, 9)  AC(blockNum_X, blockNum_Y, 11)...
                AC(blockNum_X, blockNum_Y, 18) AC(blockNum_X, blockNum_Y, 24)...
                AC(blockNum_X, blockNum_Y, 31) AC(blockNum_X, blockNum_Y, 40)...
                AC(blockNum_X, blockNum_Y, 44) AC(blockNum_X, blockNum_Y, 53);...
				AC(blockNum_X, blockNum_Y, 10) AC(blockNum_X, blockNum_Y, 19)...
                AC(blockNum_X, blockNum_Y, 23) AC(blockNum_X, blockNum_Y, 32)...
                AC(blockNum_X, blockNum_Y, 39) AC(blockNum_X, blockNum_Y, 45)...
                AC(blockNum_X, blockNum_Y, 52) AC(blockNum_X, blockNum_Y, 54);...
				AC(blockNum_X, blockNum_Y, 20) AC(blockNum_X, blockNum_Y, 22)...
                AC(blockNum_X, blockNum_Y, 33) AC(blockNum_X, blockNum_Y, 38)...
                AC(blockNum_X, blockNum_Y, 46) AC(blockNum_X, blockNum_Y, 51)...
                AC(blockNum_X, blockNum_Y, 55) AC(blockNum_X, blockNum_Y, 60);...
				AC(blockNum_X, blockNum_Y, 21) AC(blockNum_X, blockNum_Y, 34)...
                AC(blockNum_X, blockNum_Y, 37) AC(blockNum_X, blockNum_Y, 47)...
                AC(blockNum_X, blockNum_Y, 50) AC(blockNum_X, blockNum_Y, 56)...
                AC(blockNum_X, blockNum_Y, 59) AC(blockNum_X, blockNum_Y, 61);...
				AC(blockNum_X, blockNum_Y, 35) AC(blockNum_X, blockNum_Y, 36)...
                AC(blockNum_X, blockNum_Y, 48) AC(blockNum_X, blockNum_Y, 49)...
                AC(blockNum_X, blockNum_Y, 57) AC(blockNum_X, blockNum_Y, 58)...
                AC(blockNum_X, blockNum_Y, 62) AC(blockNum_X, blockNum_Y, 63)];
		end
	end
end
