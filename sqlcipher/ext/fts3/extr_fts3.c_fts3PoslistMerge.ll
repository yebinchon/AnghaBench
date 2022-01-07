; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3PoslistMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3PoslistMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POS_COLUMN = common dso_local global i8 0, align 1
@FTS_CORRUPT_VTAB = common dso_local global i32 0, align 4
@POS_END = common dso_local global i8 0, align 1
@POSITION_LIST_END = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8**)* @fts3PoslistMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3PoslistMerge(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %165, %3
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %166

35:                                               ; preds = %33
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @POS_COLUMN, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i32 @fts3GetVarint32(i8* %44, i32* %11)
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @FTS_CORRUPT_VTAB, align 4
  store i32 %49, i32* %4, align 4
  br label %179

50:                                               ; preds = %42
  br label %62

51:                                               ; preds = %35
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @POS_END, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @POSITION_LIST_END, align 4
  store i32 %59, i32* %11, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %58
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @POS_COLUMN, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call i32 @fts3GetVarint32(i8* %71, i32* %12)
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @FTS_CORRUPT_VTAB, align 4
  store i32 %76, i32* %4, align 4
  br label %179

77:                                               ; preds = %69
  br label %89

78:                                               ; preds = %62
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @POS_END, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @POSITION_LIST_END, align 4
  store i32 %86, i32* %12, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %87, %85
  br label %89

89:                                               ; preds = %88, %77
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %89
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @fts3PutColNumber(i8** %8, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %9, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %10, align 8
  %104 = call i32 @fts3GetDeltaVarint(i8** %9, i32* %13)
  %105 = call i32 @fts3GetDeltaVarint(i8** %10, i32* %14)
  br label %106

106:                                              ; preds = %143, %93
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %14, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 @fts3PutDeltaVarint(i8** %8, i32* %15, i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 2
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = call i32 @fts3ReadNextPos(i8** %9, i32* %13)
  %124 = call i32 @fts3ReadNextPos(i8** %10, i32* %14)
  br label %134

125:                                              ; preds = %114
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @fts3ReadNextPos(i8** %9, i32* %13)
  br label %133

131:                                              ; preds = %125
  %132 = call i32 @fts3ReadNextPos(i8** %10, i32* %14)
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133, %122
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @POSITION_LIST_END, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @POSITION_LIST_END, align 4
  %142 = icmp ne i32 %140, %141
  br label %143

143:                                              ; preds = %139, %135
  %144 = phi i1 [ true, %135 ], [ %142, %139 ]
  br i1 %144, label %106, label %145

145:                                              ; preds = %143
  br label %165

146:                                              ; preds = %89
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @fts3PutColNumber(i8** %8, i32 %151)
  %153 = load i8*, i8** %9, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %9, align 8
  %156 = call i32 @fts3ColumnlistCopy(i8** %8, i8** %9)
  br label %164

157:                                              ; preds = %146
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @fts3PutColNumber(i8** %8, i32 %158)
  %160 = load i8*, i8** %10, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %10, align 8
  %163 = call i32 @fts3ColumnlistCopy(i8** %8, i8** %10)
  br label %164

164:                                              ; preds = %157, %150
  br label %165

165:                                              ; preds = %164, %145
  br label %23

166:                                              ; preds = %33
  %167 = load i8, i8* @POS_END, align 1
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %8, align 8
  store i8 %167, i8* %168, align 1
  %170 = load i8*, i8** %8, align 8
  %171 = load i8**, i8*** %5, align 8
  store i8* %170, i8** %171, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8**, i8*** %6, align 8
  store i8* %173, i8** %174, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8**, i8*** %7, align 8
  store i8* %176, i8** %177, align 8
  %178 = load i32, i32* @SQLITE_OK, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %166, %75, %48
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @fts3GetVarint32(i8*, i32*) #1

declare dso_local i32 @fts3PutColNumber(i8**, i32) #1

declare dso_local i32 @fts3GetDeltaVarint(i8**, i32*) #1

declare dso_local i32 @fts3PutDeltaVarint(i8**, i32*, i32) #1

declare dso_local i32 @fts3ReadNextPos(i8**, i32*) #1

declare dso_local i32 @fts3ColumnlistCopy(i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
