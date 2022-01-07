; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_digest_update_uio.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_digest_update_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@UIO_SYSSPACE = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@Update = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @skein_digest_update_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skein_digest_update_uio(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UIO_SYSSPACE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %26, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %35, %42
  br label %44

44:                                               ; preds = %34, %28
  %45 = phi i1 [ false, %28 ], [ %43, %34 ]
  br i1 %45, label %46, label %58

46:                                               ; preds = %44
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %28

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %65, i32* %3, align 4
  br label %122

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i64, i64* %7, align 8
  %75 = icmp ugt i64 %74, 0
  br label %76

76:                                               ; preds = %73, %67
  %77 = phi i1 [ false, %67 ], [ %75, %73 ]
  br i1 %77, label %78, label %109

78:                                               ; preds = %76
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @MIN(i64 %87, i64 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @Update, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @SKEIN_OP(i32* %90, i32 %91, i32* %101, i64 %102)
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %67

109:                                              ; preds = %76
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i64, i64* %7, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %115, %109
  %121 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %118, %64, %25
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @SKEIN_OP(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
