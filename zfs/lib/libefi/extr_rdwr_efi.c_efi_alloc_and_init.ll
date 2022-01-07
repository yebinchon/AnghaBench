; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_alloc_and_init.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_alloc_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.uuid = type { i32 }
%struct.dk_cinfo = type { i64, i64 }

@DKC_PCMCIA_MEM = common dso_local global i64 0, align 8
@DKC_VBD = common dso_local global i64 0, align 8
@DKC_UNKNOWN = common dso_local global i64 0, align 8
@EFI_MIN_ARRAY_SIZE = common dso_local global i32 0, align 4
@MAX_PARTS = common dso_local global i32 0, align 4
@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"the maximum number of partitions supported is %lu\0A\00", align 1
@EFI_VERSION_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_alloc_and_init(i32 %0, i32 %1, %struct.dk_gpt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dk_gpt**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dk_gpt*, align 8
  %13 = alloca %struct.uuid, align 4
  %14 = alloca %struct.dk_cinfo, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.dk_gpt** %2, %struct.dk_gpt*** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @read_disk_info(i32 %15, i8** %8, i32* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %125

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @efi_get_info(i32 %20, %struct.dk_cinfo* %14)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %125

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %14, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %125

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %14, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DKC_PCMCIA_MEM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %14, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DKC_VBD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %14, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DKC_UNKNOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34, %29
  store i32 -1, i32* %4, align 4
  br label %125

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @NBLOCKS(i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @EFI_MIN_ARRAY_SIZE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i32, i32* @EFI_MIN_ARRAY_SIZE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %57, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %45
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MAX_PARTS, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64, i64* @efi_debug, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @MAX_PARTS, align 4
  %71 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  store i32 -1, i32* %4, align 4
  br label %125

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = add i64 48, %77
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call %struct.dk_gpt* @calloc(i32 1, i64 %79)
  %81 = load %struct.dk_gpt**, %struct.dk_gpt*** %7, align 8
  store %struct.dk_gpt* %80, %struct.dk_gpt** %81, align 8
  %82 = icmp eq %struct.dk_gpt* %80, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %125

84:                                               ; preds = %73
  %85 = load %struct.dk_gpt**, %struct.dk_gpt*** %7, align 8
  %86 = load %struct.dk_gpt*, %struct.dk_gpt** %85, align 8
  store %struct.dk_gpt* %86, %struct.dk_gpt** %12, align 8
  %87 = load i32, i32* @EFI_VERSION_CURRENT, align 4
  %88 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %89 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %92 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %95 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %99 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr i8, i8* %100, i64 -1
  %102 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %103 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr i8, i8* %104, i64 -1
  %106 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %107 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %109 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr i8, i8* %110, i64 %113
  %115 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %116 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = bitcast %struct.uuid* %13 to i32*
  %118 = call i32 @uuid_generate(i32* %117)
  %119 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %120 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.uuid, %struct.uuid* %13, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @UUID_LE_CONVERT(i32 %121, i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %84, %83, %72, %44, %28, %23, %18
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @read_disk_info(i32, i8**, i32*) #1

declare dso_local i64 @efi_get_info(i32, %struct.dk_cinfo*) #1

declare dso_local i32 @NBLOCKS(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local %struct.dk_gpt* @calloc(i32, i64) #1

declare dso_local i32 @uuid_generate(i32*) #1

declare dso_local i32 @UUID_LE_CONVERT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
