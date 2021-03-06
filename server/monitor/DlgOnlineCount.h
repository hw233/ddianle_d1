#pragma once
#include "afxcmn.h"


// CDlgOnlineCount 对话框

class CDlgOnlineCount : public CDialog
{
	DECLARE_DYNAMIC(CDlgOnlineCount)

public:
	CDlgOnlineCount(CWnd* pParent = NULL);   // 标准构造函数
	virtual ~CDlgOnlineCount();

// 对话框数据
	enum { IDD = IDD_ONLINECOUNT };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnPaint();
	afx_msg void OnSize(UINT nType, int cx, int cy);
	CSliderCtrl m_bar;
	afx_msg void OnShowWindow(BOOL bShow, UINT nStatus);
	virtual BOOL OnInitDialog();
};
