; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bt_delete_range.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bt_delete_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@SQLITE4_OK = common dso_local global i32 0, align 4
@BT_CONTROL_FAST_INSERT_OP = common dso_local global i32 0, align 4
@BT_SEEK_GE = common dso_local global i32 0, align 4
@SQLITE4_INEXACT = common dso_local global i32 0, align 4
@SQLITE4_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32)* @bt_delete_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_delete_range(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  store i32* null, i32** %12, align 8
  %21 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = call i32 @btMinTransaction(%struct.TYPE_4__* %22, i32 2, i32* %14)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @SQLITE4_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BT_CONTROL_FAST_INSERT_OP, align 4
  %37 = call i32 @sqlite4BtControl(i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sqlite4BtCsrOpen(i32 %41, i32 0, i32** %12)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %38, %5
  br label %44

44:                                               ; preds = %133, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @SQLITE4_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %136

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BT_SEEK_GE, align 4
  %53 = call i32 @sqlite4BtCsrSeek(i32* %49, i8* %50, i32 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @SQLITE4_INEXACT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @SQLITE4_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %136

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @sqlite4BtCsrKey(i32* %65, i8** %15, i32* %16)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @SQLITE4_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %136

71:                                               ; preds = %64
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @MIN(i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @memcmp(i8* %75, i8* %76, i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp sle i32 %85, %86
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ false, %81 ], [ %87, %84 ]
  br label %90

90:                                               ; preds = %88, %71
  %91 = phi i1 [ true, %71 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @sqlite4BtCsrNext(i32* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @SQLITE4_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %136

107:                                              ; preds = %100
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @sqlite4BtCsrKey(i32* %108, i8** %15, i32* %16)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @SQLITE4_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %136

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %96, %90
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @MIN(i32 %116, i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @memcmp(i8* %119, i8* %120, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %18, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %115
  br label %136

133:                                              ; preds = %128, %125
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @sqlite4BtDelete(i32* %134)
  store i32 %135, i32* %13, align 4
  br label %44

136:                                              ; preds = %132, %113, %106, %70, %63, %44
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @SQLITE4_NOTFOUND, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32*, i32** %12, align 8
  %144 = call i32 @sqlite4BtCsrClose(i32* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @btRestoreTransaction(%struct.TYPE_4__* %145, i32 %146, i32 %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  ret i32 %149
}

declare dso_local i32 @btMinTransaction(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @sqlite4BtControl(i32, i32, i32) #1

declare dso_local i32 @sqlite4BtCsrOpen(i32, i32, i32**) #1

declare dso_local i32 @sqlite4BtCsrSeek(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite4BtCsrKey(i32*, i8**, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite4BtCsrNext(i32*) #1

declare dso_local i32 @sqlite4BtDelete(i32*) #1

declare dso_local i32 @sqlite4BtCsrClose(i32*) #1

declare dso_local i32 @btRestoreTransaction(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
