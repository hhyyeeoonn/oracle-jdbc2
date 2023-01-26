package vo;
// vo는 모델계층이 아니라 타입이라고 봐야함 전 계층에서 매개변수나 반환타입으로 쓰기 때문
public class Board {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String memberId;
	private String updatedate;
	private String createdate;
	
	public Board() {
		// super(); // 부모생성자 호출 생략가능
	}
	
	public Board(int boardNo, String boardTitle, String boardContent, String memberId, String updatedate, String createdate) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.memberId = memberId;
		this.updatedate = updatedate;
		this.createdate = createdate;
	}

	@Override // 부모가 가진 메소드를 자식타입에서 재정의
	public String toString() { // 디버깅시 객체 멤버를 출력할 때 사용
		return "Board [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", memberId=" + memberId + ", updatedate=" + updatedate + ", createdate=" + createdate + "]";
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	
}
