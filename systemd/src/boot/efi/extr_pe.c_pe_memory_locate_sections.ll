; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_pe.c_pe_memory_locate_sections.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_pe.c_pe_memory_locate_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DosFileHeader = type { i64, i32 }
%struct.PeHeader = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.PeSectionHeader = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@EFI_LOAD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PE\00\00\00", align 1
@PE_HEADER_MACHINE_X64 = common dso_local global i64 0, align 8
@PE_HEADER_MACHINE_ARM64 = common dso_local global i64 0, align 8
@PE_HEADER_MACHINE_I386 = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_memory_locate_sections(i8* %0, i8** %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.DosFileHeader*, align 8
  %13 = alloca %struct.PeHeader*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.PeSectionHeader*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.DosFileHeader*
  store %struct.DosFileHeader* %19, %struct.DosFileHeader** %12, align 8
  %20 = load %struct.DosFileHeader*, %struct.DosFileHeader** %12, align 8
  %21 = getelementptr inbounds %struct.DosFileHeader, %struct.DosFileHeader* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @CompareMem(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %26, i32* %6, align 4
  br label %159

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.DosFileHeader*, %struct.DosFileHeader** %12, align 8
  %30 = getelementptr inbounds %struct.DosFileHeader, %struct.DosFileHeader* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = bitcast i8* %32 to %struct.PeHeader*
  store %struct.PeHeader* %33, %struct.PeHeader** %13, align 8
  %34 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %35 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @CompareMem(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %40, i32* %6, align 4
  br label %159

41:                                               ; preds = %27
  %42 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %43 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PE_HEADER_MACHINE_X64, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %50 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PE_HEADER_MACHINE_ARM64, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %57 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PE_HEADER_MACHINE_I386, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %63, i32* %6, align 4
  br label %159

64:                                               ; preds = %55, %48, %41
  %65 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %66 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 96
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @EFI_LOAD_ERROR, align 4
  store i32 %71, i32* %6, align 4
  br label %159

72:                                               ; preds = %64
  %73 = load %struct.DosFileHeader*, %struct.DosFileHeader** %12, align 8
  %74 = getelementptr inbounds %struct.DosFileHeader, %struct.DosFileHeader* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 32
  %77 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %78 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  store i64 %81, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %82

82:                                               ; preds = %154, %72
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.PeHeader*, %struct.PeHeader** %13, align 8
  %85 = getelementptr inbounds %struct.PeHeader, %struct.PeHeader* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %83, %88
  br i1 %89, label %90, label %157

90:                                               ; preds = %82
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = bitcast i8* %93 to %struct.PeSectionHeader*
  store %struct.PeSectionHeader* %94, %struct.PeSectionHeader** %16, align 8
  store i64 0, i64* %17, align 8
  br label %95

95:                                               ; preds = %148, %90
  %96 = load i8**, i8*** %8, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %151

101:                                              ; preds = %95
  %102 = load %struct.PeSectionHeader*, %struct.PeSectionHeader** %16, align 8
  %103 = getelementptr inbounds %struct.PeSectionHeader, %struct.PeSectionHeader* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i8**, i8*** %8, align 8
  %106 = load i64, i64* %17, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8**, i8*** %8, align 8
  %110 = load i64, i64* %17, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strlena(i8* %112)
  %114 = call i64 @CompareMem(i32 %104, i8* %108, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  br label %148

117:                                              ; preds = %101
  %118 = load i64*, i64** %9, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.PeSectionHeader*, %struct.PeSectionHeader** %16, align 8
  %122 = getelementptr inbounds %struct.PeSectionHeader, %struct.PeSectionHeader* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %17, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i64*, i64** %10, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load %struct.PeSectionHeader*, %struct.PeSectionHeader** %16, align 8
  %132 = getelementptr inbounds %struct.PeSectionHeader, %struct.PeSectionHeader* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %10, align 8
  %135 = load i64, i64* %17, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %130, %127
  %138 = load i64*, i64** %11, align 8
  %139 = icmp ne i64* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load %struct.PeSectionHeader*, %struct.PeSectionHeader** %16, align 8
  %142 = getelementptr inbounds %struct.PeSectionHeader, %struct.PeSectionHeader* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %11, align 8
  %145 = load i64, i64* %17, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  store i64 %143, i64* %146, align 8
  br label %147

147:                                              ; preds = %140, %137
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i64, i64* %17, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %17, align 8
  br label %95

151:                                              ; preds = %95
  %152 = load i64, i64* %15, align 8
  %153 = add i64 %152, 32
  store i64 %153, i64* %15, align 8
  br label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %14, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %14, align 8
  br label %82

157:                                              ; preds = %82
  %158 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %157, %70, %62, %39, %25
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i64 @CompareMem(i32, i8*, i32) #1

declare dso_local i32 @strlena(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
