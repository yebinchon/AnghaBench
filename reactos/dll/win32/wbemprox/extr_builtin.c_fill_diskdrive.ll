; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_diskdrive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_diskdrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_diskdrive = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@fill_diskdrive.fmtW = internal constant [23 x i8] c"\\\\\\\\.\\\\PHYSICALDRIVE%u\00", align 16
@__const.fill_diskdrive.root = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@DRIVE_FIXED = common dso_local global i32 0, align 4
@DRIVE_REMOVABLE = common dso_local global i32 0, align 4
@diskdrive_interfacetypeW = common dso_local global i32 0, align 4
@diskdrive_manufacturerW = common dso_local global i32 0, align 4
@diskdrive_mediatype_fixedW = common dso_local global i32 0, align 4
@diskdrive_mediatype_removableW = common dso_local global i32 0, align 4
@diskdrive_modelW = common dso_local global i32 0, align 4
@diskdrive_pnpdeviceidW = common dso_local global i32 0, align 4
@diskdrive_serialW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_diskdrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_diskdrive(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca %struct.record_diskdrive*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %19 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @fill_diskdrive.fmtW, i64 0, i64 0))
  %20 = add nsw i32 %19, 10
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fill_diskdrive.root, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1073741824, i32* %15, align 4
  %25 = call i32 (...) @GetLogicalDrives()
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.table*, %struct.table** %4, align 8
  %28 = call i32 @resize_table(%struct.table* %27, i32 2, i32 36)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %142

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %132, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 26
  br i1 %35, label %36, label %135

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %131

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 65, %43
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %48 = call i32 @GetDriveTypeW(i8* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @DRIVE_FIXED, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @DRIVE_REMOVABLE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %132

57:                                               ; preds = %52, %42
  %58 = load %struct.table*, %struct.table** %4, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @resize_table(%struct.table* %58, i32 %60, i32 36)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %142

65:                                               ; preds = %57
  %66 = load %struct.table*, %struct.table** %4, align 8
  %67 = getelementptr inbounds %struct.table, %struct.table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.record_diskdrive*
  store %struct.record_diskdrive* %72, %struct.record_diskdrive** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @sprintfW(i8* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @fill_diskdrive.fmtW, i64 0, i64 0), i32 %73)
  %75 = call i32 @heap_strdupW(i8* %23)
  %76 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %77 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %80 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @diskdrive_interfacetypeW, align 4
  %82 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %83 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @diskdrive_manufacturerW, align 4
  %85 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %86 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @DRIVE_FIXED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %65
  %91 = load i32, i32* @diskdrive_mediatype_fixedW, align 4
  %92 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %93 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  br label %98

94:                                               ; preds = %65
  %95 = load i32, i32* @diskdrive_mediatype_removableW, align 4
  %96 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %97 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* @diskdrive_modelW, align 4
  %100 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %101 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @diskdrive_pnpdeviceidW, align 4
  %103 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %104 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @diskdrive_serialW, align 4
  %106 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %107 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %109 = call i32 @get_freespace(i8* %108, i32* %15)
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.record_diskdrive*, %struct.record_diskdrive** %9, align 8
  %112 = getelementptr inbounds %struct.record_diskdrive, %struct.record_diskdrive* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.table*, %struct.table** %4, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.expr*, %struct.expr** %5, align 8
  %116 = call i32 @match_row(%struct.table* %113, i32 %114, %struct.expr* %115, i32* %17)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %98
  %119 = load %struct.table*, %struct.table** %4, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @free_row_values(%struct.table* %119, i32 %120)
  br label %132

122:                                              ; preds = %98
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 36
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %122, %36
  br label %132

132:                                              ; preds = %131, %118, %56
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %33

135:                                              ; preds = %33
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.table*, %struct.table** %4, align 8
  %140 = getelementptr inbounds %struct.table, %struct.table* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %142

142:                                              ; preds = %135, %63, %30
  %143 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @GetLogicalDrives(...) #1

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @GetDriveTypeW(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @heap_strdupW(i8*) #1

declare dso_local i32 @get_freespace(i8*, i32*) #1

declare dso_local i32 @match_row(%struct.table*, i32, %struct.expr*, i32*) #1

declare dso_local i32 @free_row_values(%struct.table*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
