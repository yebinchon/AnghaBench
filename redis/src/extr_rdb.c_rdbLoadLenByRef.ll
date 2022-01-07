; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadLenByRef.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadLenByRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDB_ENCVAL = common dso_local global i32 0, align 4
@RDB_6BITLEN = common dso_local global i32 0, align 4
@RDB_14BITLEN = common dso_local global i32 0, align 4
@RDB_32BITLEN = common dso_local global i8 0, align 1
@RDB_64BITLEN = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [43 x i8] c"Unknown length encoding %d in rdbLoadLen()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbLoadLenByRef(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %19 = call i64 @rioRead(i32* %17, i8* %18, i32 1)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %117

22:                                               ; preds = %16
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 192
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @RDB_ENCVAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 63
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %7, align 8
  store i8 %41, i8* %42, align 1
  br label %116

43:                                               ; preds = %22
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @RDB_6BITLEN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 63
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  br label %115

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @RDB_14BITLEN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call i64 @rioRead(i32* %59, i8* %61, i32 1)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %117

65:                                               ; preds = %58
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 63
  %70 = shl i32 %69, 8
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %70, %73
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %7, align 8
  store i8 %75, i8* %76, align 1
  br label %114

77:                                               ; preds = %54
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @RDB_32BITLEN, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @rioRead(i32* %85, i8* %10, i32 4)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 -1, i32* %4, align 4
  br label %117

89:                                               ; preds = %84
  %90 = load i8, i8* %10, align 1
  %91 = call zeroext i8 @ntohl(i8 zeroext %90)
  %92 = load i8*, i8** %7, align 8
  store i8 %91, i8* %92, align 1
  br label %113

93:                                               ; preds = %77
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @RDB_64BITLEN, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 @rioRead(i32* %101, i8* %11, i32 8)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %117

105:                                              ; preds = %100
  %106 = load i8, i8* %11, align 1
  %107 = call zeroext i8 @ntohu64(i8 zeroext %106)
  %108 = load i8*, i8** %7, align 8
  store i8 %107, i8* %108, align 1
  br label %112

109:                                              ; preds = %93
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %110)
  store i32 -1, i32* %4, align 4
  br label %117

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %65
  br label %115

115:                                              ; preds = %114, %47
  br label %116

116:                                              ; preds = %115, %36
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %109, %104, %88, %64, %21
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64 @rioRead(i32*, i8*, i32) #1

declare dso_local zeroext i8 @ntohl(i8 zeroext) #1

declare dso_local zeroext i8 @ntohu64(i8 zeroext) #1

declare dso_local i32 @rdbExitReportCorruptRDB(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
