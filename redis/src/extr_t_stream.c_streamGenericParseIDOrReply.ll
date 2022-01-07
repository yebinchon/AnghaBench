; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamGenericParseIDOrReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamGenericParseIDOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@C_OK = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Invalid stream ID specified as stream command argument\00", align 1
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @streamGenericParseIDOrReply(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdslen(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 127
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %123

23:                                               ; preds = %5
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdslen(i32 %30)
  %32 = add nsw i32 %31, 1
  %33 = call i32 @memcpy(i8* %24, i32 %27, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %23
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %123

52:                                               ; preds = %46, %41, %23
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @C_OK, align 4
  store i32 %67, i32* %6, align 4
  br label %131

68:                                               ; preds = %57, %52
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i8*, i8** @UINT64_MAX, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i8*, i8** @UINT64_MAX, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @C_OK, align 4
  store i32 %87, i32* %6, align 4
  br label %131

88:                                               ; preds = %73, %68
  br label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %91 = call i8* @strchr(i8* %90, i8 signext 45)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %13, align 8
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %89
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %98 = call i64 @string2ull(i8* %97, i64* %14)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %123

101:                                              ; preds = %96
  %102 = load i8*, i8** %13, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = call i64 @string2ull(i8* %106, i64* %15)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %123

110:                                              ; preds = %104, %101
  %111 = load i8*, i8** %13, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %10, align 8
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i64, i64* %14, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @C_OK, align 4
  store i32 %122, i32* %6, align 4
  br label %131

123:                                              ; preds = %109, %100, %51, %22
  %124 = load i32*, i32** %7, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @addReplyError(i32* %127, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* @C_ERR, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %115, %78, %62
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @string2ull(i8*, i64*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
