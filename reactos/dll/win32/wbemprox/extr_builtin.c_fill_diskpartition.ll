; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_diskpartition.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_diskpartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_diskpartition = type { i32, i32, i32, i32, i32, i64, i8*, i64, i8* }

@fill_diskpartition.fmtW = internal constant [23 x i8] c"Disk #%u, Partition #0\00", align 16
@__const.fill_diskpartition.root = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@DRIVE_FIXED = common dso_local global i32 0, align 4
@DRIVE_REMOVABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_diskpartition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_diskpartition(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca %struct.record_diskpartition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %17 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fill_diskpartition.root, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 1073741824, i32* %14, align 4
  %18 = call i32 (...) @GetLogicalDrives()
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.table*, %struct.table** %4, align 8
  %21 = call i32 @resize_table(%struct.table* %20, i32 4, i32 56)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %24, i32* %3, align 4
  br label %134

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %124, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 26
  br i1 %28, label %29, label %127

29:                                               ; preds = %26
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %123

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 65, %36
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %41 = call i32 @GetDriveTypeW(i8* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @DRIVE_FIXED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DRIVE_REMOVABLE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %124

50:                                               ; preds = %45, %35
  %51 = load %struct.table*, %struct.table** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @resize_table(%struct.table* %51, i32 %53, i32 56)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %57, i32* %3, align 4
  br label %134

58:                                               ; preds = %50
  %59 = load %struct.table*, %struct.table** %4, align 8
  %60 = getelementptr inbounds %struct.table, %struct.table* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.record_diskpartition*
  store %struct.record_diskpartition* %65, %struct.record_diskpartition** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 -1, i32 0
  %70 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %71 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 -1, i32 0
  %76 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %77 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @sprintfW(i8* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @fill_diskpartition.fmtW, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %82 = call i8* @heap_strdupW(i8* %81)
  %83 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %84 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %87 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %89 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %91 = call i8* @heap_strdupW(i8* %90)
  %92 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %93 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %95 = call i32 @get_freespace(i8* %94, i32* %14)
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %98 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %100 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %102 = call i32 @get_filesystem(i8* %101)
  %103 = load %struct.record_diskpartition*, %struct.record_diskpartition** %8, align 8
  %104 = getelementptr inbounds %struct.record_diskpartition, %struct.record_diskpartition* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.table*, %struct.table** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.expr*, %struct.expr** %5, align 8
  %108 = call i32 @match_row(%struct.table* %105, i32 %106, %struct.expr* %107, i32* %16)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %58
  %111 = load %struct.table*, %struct.table** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @free_row_values(%struct.table* %111, i32 %112)
  br label %124

114:                                              ; preds = %58
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 56
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %114, %29
  br label %124

124:                                              ; preds = %123, %110, %49
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %26

127:                                              ; preds = %26
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.table*, %struct.table** %4, align 8
  %132 = getelementptr inbounds %struct.table, %struct.table* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %127, %56, %23
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #2

declare dso_local i32 @GetDriveTypeW(i8*) #2

declare dso_local i32 @sprintfW(i8*, i8*, i32) #2

declare dso_local i8* @heap_strdupW(i8*) #2

declare dso_local i32 @get_freespace(i8*, i32*) #2

declare dso_local i32 @get_filesystem(i8*) #2

declare dso_local i32 @match_row(%struct.table*, i32, %struct.expr*, i32*) #2

declare dso_local i32 @free_row_values(%struct.table*, i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
