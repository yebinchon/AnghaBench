; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_FindItemFromPath.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_FindItemFromPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@MAXFILENAMELEN = common dso_local global i32 0, align 4
@CHAR_COLON = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i64 0, align 8
@CHAR_BACKSLASH = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindItemFromPath(i32 %0, i64* %1, i64 %2, i64* %3, %struct.TYPE_3__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_3__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_3__** %4, %struct.TYPE_3__*** %11, align 8
  %20 = load i32, i32* @MAXFILENAMELEN, align 4
  %21 = add nsw i32 1, %20
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64*, i64** %10, align 8
  store i64 -1, i64* %29, align 8
  br label %30

30:                                               ; preds = %28, %5
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %32 = icmp ne %struct.TYPE_3__** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64*, i64** %8, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @lstrlen(i64* %39)
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHAR_COLON, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %38, %35
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %171

50:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  store i64 -1, i64* %15, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  br label %51

51:                                               ; preds = %156, %50
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %157

55:                                               ; preds = %51
  %56 = load i64, i64* @CHAR_NULL, align 8
  %57 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 %56, i64* %57, align 8
  store i64* %25, i64** %13, align 8
  br label %58

58:                                               ; preds = %69, %55
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CHAR_BACKSLASH, align 8
  %66 = icmp ne i64 %64, %65
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %8, align 8
  %72 = load i64, i64* %70, align 8
  %73 = load i64*, i64** %13, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %13, align 8
  store i64 %72, i64* %73, align 8
  br label %58

75:                                               ; preds = %67
  %76 = getelementptr inbounds i64, i64* %25, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHAR_COLON, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i64, i64* @CHAR_BACKSLASH, align 8
  %82 = load i64*, i64** %13, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** %13, align 8
  store i64 %81, i64* %82, align 8
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i64, i64* @CHAR_NULL, align 8
  %86 = load i64*, i64** %13, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64*, i64** %8, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %8, align 8
  br label %111

93:                                               ; preds = %84
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i64*, i64** %10, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, i64* %15, align 8
  %101 = load i64*, i64** %10, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %104 = icmp ne %struct.TYPE_3__** %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i64, i64* @TRUE, align 8
  store i64 %109, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %171

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %153, %111
  %113 = load i64, i64* @TRUE, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %156

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @LB_GETTEXT, align 4
  %118 = load i64, i64* %12, align 8
  %119 = ptrtoint %struct.TYPE_3__** %14 to i32
  %120 = call i64 @SendMessage(i32 %116, i32 %117, i64 %118, i32 %119)
  %121 = load i64, i64* @LB_ERR, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %115
  %124 = load i64*, i64** %10, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i64, i64* %15, align 8
  %128 = load i64*, i64** %10, align 8
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %131 = icmp ne %struct.TYPE_3__** %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %134 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* %133, %struct.TYPE_3__** %134, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i64, i64* @FALSE, align 8
  store i64 %136, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %171

137:                                              ; preds = %115
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %142 = icmp eq %struct.TYPE_3__* %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @lstrcmpi(i64* %25, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i64, i64* %12, align 8
  store i64 %150, i64* %15, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %16, align 8
  br label %156

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %137
  %154 = load i64, i64* %12, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %12, align 8
  br label %112

156:                                              ; preds = %149, %112
  br label %51

157:                                              ; preds = %51
  %158 = load i64*, i64** %10, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, i64* %15, align 8
  %162 = load i64*, i64** %10, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  %164 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %165 = icmp ne %struct.TYPE_3__** %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %168 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* %167, %struct.TYPE_3__** %168, align 8
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i64, i64* @TRUE, align 8
  store i64 %170, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %171

171:                                              ; preds = %169, %135, %108, %48
  %172 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i64, i64* %6, align 8
  ret i64 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrlen(i64*) #2

declare dso_local i64 @SendMessage(i32, i32, i64, i32) #2

declare dso_local i32 @lstrcmpi(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
