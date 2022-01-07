; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_GetBookmark.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_GetBookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"www\00", align 1
@gBookmarkMatchMode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBookmark(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = call i32* @OpenBookmarkFile(i32* null)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %163

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %17, align 8
  br label %26

26:                                               ; preds = %115, %36, %23
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @FGets(i8* %27, i32 512, i32* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %116

31:                                               ; preds = %26
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call i64 @ParseHostLine(i8* %32, %struct.TYPE_5__* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %26

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @ISTREQ(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* %17, align 8
  store i64 %45, i64* %11, align 8
  store i32 1, i32* %16, align 4
  br label %116

46:                                               ; preds = %37
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call i64 @ISTRNEQ(i8* %49, i8* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = bitcast %struct.TYPE_5__* %10 to i8*
  %57 = bitcast %struct.TYPE_5__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load i64, i64* %17, align 8
  store i64 %58, i64* %12, align 8
  br label %114

59:                                               ; preds = %46
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @ISTREQ(i8* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = bitcast %struct.TYPE_5__* %8 to i8*
  %69 = bitcast %struct.TYPE_5__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load i64, i64* %17, align 8
  store i64 %70, i64* %13, align 8
  br label %113

71:                                               ; preds = %59
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 46)
  store i8* %75, i8** %18, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @ISTRNEQ(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i8*, i8** %18, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %18, align 8
  br label %100

86:                                               ; preds = %77
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @ISTRNEQ(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8*, i8** %18, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %18, align 8
  br label %99

95:                                               ; preds = %86
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %18, align 8
  br label %99

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i8*, i8** %18, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* %17, align 8
  %104 = call i64 @ISTRNEQ(i8* %101, i8* %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = bitcast %struct.TYPE_5__* %9 to i8*
  %109 = bitcast %struct.TYPE_5__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  %110 = load i64, i64* %17, align 8
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %106, %100
  br label %112

112:                                              ; preds = %111, %71
  br label %113

113:                                              ; preds = %112, %66
  br label %114

114:                                              ; preds = %113, %54
  br label %115

115:                                              ; preds = %114
  br label %26

116:                                              ; preds = %44, %26
  %117 = load i64, i64* @gBookmarkMatchMode, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %122, %119
  br label %153

124:                                              ; preds = %116
  %125 = load i64, i64* %11, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %15, align 4
  br label %152

128:                                              ; preds = %124
  %129 = load i64, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = bitcast %struct.TYPE_5__* %132 to i8*
  %134 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false)
  br label %151

135:                                              ; preds = %128
  %136 = load i64, i64* %13, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  store i32 0, i32* %15, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = bitcast %struct.TYPE_5__* %139 to i8*
  %141 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %150

142:                                              ; preds = %135
  %143 = load i64, i64* %14, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = bitcast %struct.TYPE_5__* %146 to i8*
  %148 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  br label %149

149:                                              ; preds = %145, %142
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %131
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %123
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = call i32 @memset(%struct.TYPE_5__* %157, i32 0, i32 16)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @CloseBookmarkFile(i32* %160)
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %159, %22
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32* @OpenBookmarkFile(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @FGets(i8*, i32, i32*) #1

declare dso_local i64 @ParseHostLine(i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @ISTREQ(i8*, i8*) #1

declare dso_local i64 @ISTRNEQ(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CloseBookmarkFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
