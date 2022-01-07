; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bt_fetch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bt_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@SQLITE4_OK = common dso_local global i32 0, align 4
@BT_CONTROL_FAST_INSERT_OP = common dso_local global i32 0, align 4
@BT_SEEK_EQ = common dso_local global i32 0, align 4
@SQLITE4_INEXACT = common dso_local global i32 0, align 4
@SQLITE4_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32*)* @bt_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_fetch(i32* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %12, align 8
  store i32* null, i32** %13, align 8
  %20 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite4BtTransactionLevel(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite4BtBegin(i32 %30, i32 1)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @SQLITE4_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %6, align 4
  br label %134

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BT_CONTROL_FAST_INSERT_OP, align 4
  %48 = call i32 @sqlite4BtControl(i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sqlite4BtCsrOpen(i32 %52, i32 0, i32** %13)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @SQLITE4_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %124

57:                                               ; preds = %49
  %58 = load i32*, i32** %13, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BT_SEEK_EQ, align 4
  %62 = call i32 @sqlite4BtCsrSeek(i32* %58, i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @SQLITE4_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %57
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @sqlite4BtCsrData(i32* %67, i32 0, i32 -1, i8** %16, i32* %17)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @SQLITE4_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @free(i32* %81)
  %83 = load i32, i32* %17, align 4
  %84 = mul nsw i32 %83, 2
  %85 = call i64 @malloc(i32 %84)
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = mul nsw i32 %89, 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %78, %72
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @memcpy(i32* %96, i8* %97, i32 %98)
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = bitcast i32* %104 to i8*
  %106 = load i8**, i8*** %10, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %93, %66
  br label %121

108:                                              ; preds = %57
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @SQLITE4_INEXACT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @SQLITE4_NOTFOUND, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %108
  %117 = load i8**, i8*** %10, align 8
  store i8* null, i8** %117, align 8
  %118 = load i32*, i32** %11, align 8
  store i32 -1, i32* %118, align 4
  %119 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %107
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @sqlite4BtCsrClose(i32* %122)
  br label %124

124:                                              ; preds = %121, %49
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sqlite4BtCommit(i32 %130, i32 0)
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %35
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @sqlite4BtTransactionLevel(i32) #1

declare dso_local i32 @sqlite4BtBegin(i32, i32) #1

declare dso_local i32 @sqlite4BtControl(i32, i32, i32) #1

declare dso_local i32 @sqlite4BtCsrOpen(i32, i32, i32**) #1

declare dso_local i32 @sqlite4BtCsrSeek(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite4BtCsrData(i32*, i32, i32, i8**, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @sqlite4BtCsrClose(i32*) #1

declare dso_local i32 @sqlite4BtCommit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
