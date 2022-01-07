; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_alloc_and_read.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_alloc_and_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { i32 }

@EFI_MIN_ARRAY_SIZE = common dso_local global i32 0, align 4
@VT_ERROR = common dso_local global i32 0, align 4
@VT_EINVAL = common dso_local global i32 0, align 4
@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"read of EFI table failed, rval=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_alloc_and_read(i32 %0, %struct.dk_gpt** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dk_gpt**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dk_gpt** %1, %struct.dk_gpt*** %5, align 8
  %10 = load i32, i32* @EFI_MIN_ARRAY_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  %16 = mul nsw i32 4, %15
  %17 = add nsw i32 4, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.dk_gpt* @calloc(i32 1, i32 %18)
  %20 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  store %struct.dk_gpt* %19, %struct.dk_gpt** %20, align 8
  %21 = icmp eq %struct.dk_gpt* %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @VT_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %27 = load %struct.dk_gpt*, %struct.dk_gpt** %26, align 8
  %28 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %31 = load %struct.dk_gpt*, %struct.dk_gpt** %30, align 8
  %32 = call i32 @efi_read(i32 %29, %struct.dk_gpt* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @VT_EINVAL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %24
  %37 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %38 = load %struct.dk_gpt*, %struct.dk_gpt** %37, align 8
  %39 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %45 = load %struct.dk_gpt*, %struct.dk_gpt** %44, align 8
  %46 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 4, %48
  %50 = add nsw i32 4, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %52 = load %struct.dk_gpt*, %struct.dk_gpt** %51, align 8
  %53 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %56 = load %struct.dk_gpt*, %struct.dk_gpt** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @realloc(%struct.dk_gpt* %56, i32 %57)
  store i8* %58, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %62 = load %struct.dk_gpt*, %struct.dk_gpt** %61, align 8
  %63 = call i32 @free(%struct.dk_gpt* %62)
  %64 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  store %struct.dk_gpt* null, %struct.dk_gpt** %64, align 8
  %65 = load i32, i32* @VT_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %92

66:                                               ; preds = %43
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast i8* %67 to %struct.dk_gpt*
  %69 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  store %struct.dk_gpt* %68, %struct.dk_gpt** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %72 = load %struct.dk_gpt*, %struct.dk_gpt** %71, align 8
  %73 = call i32 @efi_read(i32 %70, %struct.dk_gpt* %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %36, %24
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i64, i64* @efi_debug, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %87 = load %struct.dk_gpt*, %struct.dk_gpt** %86, align 8
  %88 = call i32 @free(%struct.dk_gpt* %87)
  %89 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  store %struct.dk_gpt* null, %struct.dk_gpt** %89, align 8
  br label %90

90:                                               ; preds = %85, %75
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %60, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.dk_gpt* @calloc(i32, i32) #1

declare dso_local i32 @efi_read(i32, %struct.dk_gpt*) #1

declare dso_local i8* @realloc(%struct.dk_gpt*, i32) #1

declare dso_local i32 @free(%struct.dk_gpt*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
