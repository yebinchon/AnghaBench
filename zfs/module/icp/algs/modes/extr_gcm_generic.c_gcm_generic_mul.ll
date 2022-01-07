; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_gcm_generic.c_gcm_generic_mul.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_gcm_generic.c_gcm_generic_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_block = type { i32, i64, i32, i32 }

@gcm_generic_mul.R = internal constant i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @gcm_generic_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_generic_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aes_block, align 8
  %8 = alloca %struct.aes_block, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = bitcast %struct.aes_block* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @ntohll(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @ntohll(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %96, %3
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %99

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ntohll(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %90, %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 64
  br i1 %38, label %39, label %95

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = and i64 %41, -9223372036854775808
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, %46
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %7, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = xor i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %44, %39
  %56 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %57, 1
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 63
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = lshr i64 %66, 1
  %68 = or i64 %64, %67
  %69 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 1
  %73 = xor i32 %72, 0
  %74 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  br label %89

75:                                               ; preds = %55
  %76 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 63
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = lshr i64 %81, 1
  %83 = or i64 %79, %82
  %84 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 1
  %88 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %8, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %75, %60
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %36

95:                                               ; preds = %36
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %25

99:                                               ; preds = %25
  %100 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @htonll(i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.aes_block, %struct.aes_block* %7, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @htonll(i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %108, i32* %110, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @ntohll(i32) #2

declare dso_local i32 @htonll(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
