; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_sha256.c_sha256_finish_ctx.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_sha256.c_sha256_finish_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { i32, i32, i32*, i32*, i32*, i8** }

@fillbuf = common dso_local global i32 0, align 4
@TOTAL64_low = common dso_local global i64 0, align 8
@TOTAL64_high = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sha256_finish_ctx(%struct.sha256_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.sha256_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sha256_ctx* %0, %struct.sha256_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 56
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 120, %19
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 56, %22
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  store i32 %25, i32* %6, align 4
  %26 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* @fillbuf, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CopyMem(i32* %31, i32 %32, i32 %33)
  %35 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @TOTAL64_low, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  %42 = call i8* @SWAP(i32 %41)
  %43 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %43, i32 0, i32 5
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 4
  %50 = sdiv i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %45, i64 %51
  store i8* %42, i8** %52, align 8
  %53 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @TOTAL64_high, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 3
  %60 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @TOTAL64_low, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 29
  %67 = or i32 %59, %66
  %68 = call i8* @SWAP(i32 %67)
  %69 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %69, i32 0, i32 5
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = sdiv i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %71, i64 %76
  store i8* %68, i8** %77, align 8
  %78 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  %84 = add nsw i32 %83, 8
  %85 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %86 = call i32 @sha256_process_block(i32* %80, i32 %84, %struct.sha256_ctx* %85)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %105, %24
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load %struct.sha256_ctx*, %struct.sha256_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @SWAP(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load i8*, i8** %4, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i32 @CopyMem(i32*, i32, i32) #1

declare dso_local i8* @SWAP(i32) #1

declare dso_local i32 @sha256_process_block(i32*, i32, %struct.sha256_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
