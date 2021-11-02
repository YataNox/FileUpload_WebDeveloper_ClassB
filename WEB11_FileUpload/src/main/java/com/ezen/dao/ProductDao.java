package com.ezen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.ezen.dto.ProductVO;

public class ProductDao {
	private ProductDao() {}
	private static ProductDao instance = new ProductDao();
	public static ProductDao getInstance() {return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<ProductVO> selectAll() {
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		return list;
	}
	
	
}
