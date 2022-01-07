; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_lib.c_libdef_fixupbc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_lib.c_libdef_fixupbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libbc_endian = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i32 0, align 4
@BC_ISTYPE = common dso_local global i64 0, align 8
@LJ_TNUMX = common dso_local global i32 0, align 4
@BC_ISNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @libdef_fixupbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libdef_fixupbc(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 4
  store i64* %10, i64** %2, align 8
  %11 = load i64*, i64** %2, align 8
  %12 = call i64* @libdef_uleb128(i64* %11, i64* %4)
  store i64* %12, i64** %2, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = call i64* @libdef_uleb128(i64* %13, i64* %4)
  store i64* %14, i64** %2, align 8
  %15 = load i64*, i64** %2, align 8
  %16 = call i64* @libdef_uleb128(i64* %15, i64* %4)
  store i64* %16, i64** %2, align 8
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %88, %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %17
  %22 = load i64*, i64** %2, align 8
  %23 = load i64, i64* @libbc_endian, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 3, i32 0
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %22, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load i64*, i64** %2, align 8
  %31 = load i64, i64* @libbc_endian, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load i64*, i64** %2, align 8
  %39 = load i64, i64* @libbc_endian, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load i64*, i64** %2, align 8
  %47 = load i64, i64* @libbc_endian, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* @LJ_DUALNUM, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %21
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @BC_ISTYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* @LJ_TNUMX, align 4
  %63 = xor i32 %62, -1
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i64, i64* @BC_ISNUM, align 8
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %67, %60, %56, %21
  %72 = load i64, i64* %5, align 8
  %73 = load i64*, i64** %2, align 8
  %74 = call i64 @LJ_ENDIAN_SELECT(i32 0, i32 3)
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64*, i64** %2, align 8
  %78 = call i64 @LJ_ENDIAN_SELECT(i32 1, i32 2)
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64*, i64** %2, align 8
  %82 = call i64 @LJ_ENDIAN_SELECT(i32 2, i32 1)
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64*, i64** %2, align 8
  %86 = call i64 @LJ_ENDIAN_SELECT(i32 3, i32 0)
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %71
  %89 = load i64, i64* %3, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %3, align 8
  %91 = load i64*, i64** %2, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 4
  store i64* %92, i64** %2, align 8
  br label %17

93:                                               ; preds = %17
  ret void
}

declare dso_local i64* @libdef_uleb128(i64*, i64*) #1

declare dso_local i64 @LJ_ENDIAN_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
