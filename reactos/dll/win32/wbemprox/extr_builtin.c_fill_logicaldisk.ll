; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_logicaldisk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_logicaldisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_logicaldisk = type { i32, i32, i32, i32, i8*, i32, i32, i8* }

@fill_logicaldisk.fmtW = internal constant [4 x i8] c"%c:\00", align 1
@__const.fill_logicaldisk.root = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@DRIVE_FIXED = common dso_local global i32 0, align 4
@DRIVE_CDROM = common dso_local global i32 0, align 4
@DRIVE_REMOVABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_logicaldisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_logicaldisk(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca %struct.record_logicaldisk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %16 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fill_logicaldisk.root, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1073741824, i32* %13, align 4
  %17 = call i32 (...) @GetLogicalDrives()
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.table*, %struct.table** %4, align 8
  %20 = call i32 @resize_table(%struct.table* %19, i32 4, i32 40)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %23, i32* %3, align 4
  br label %131

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %121, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 26
  br i1 %27, label %28, label %124

28:                                               ; preds = %25
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %120

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 65, %35
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %40 = call i32 @GetDriveTypeW(i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @DRIVE_FIXED, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @DRIVE_CDROM, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @DRIVE_REMOVABLE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %121

53:                                               ; preds = %48, %44, %34
  %54 = load %struct.table*, %struct.table** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @resize_table(%struct.table* %54, i32 %56, i32 40)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %60, i32* %3, align 4
  br label %131

61:                                               ; preds = %53
  %62 = load %struct.table*, %struct.table** %4, align 8
  %63 = getelementptr inbounds %struct.table, %struct.table* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.record_logicaldisk*
  store %struct.record_logicaldisk* %68, %struct.record_logicaldisk** %8, align 8
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 65, %70
  %72 = trunc i32 %71 to i8
  %73 = call i32 @sprintfW(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fill_logicaldisk.fmtW, i64 0, i64 0), i8 signext %72)
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %75 = call i8* @heap_strdupW(i8* %74)
  %76 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %77 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %80 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %82 = call i32 @get_filesystem(i8* %81)
  %83 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %84 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %86 = call i32 @get_freespace(i8* %85, i32* %13)
  %87 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %88 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %90 = call i8* @heap_strdupW(i8* %89)
  %91 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %92 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %95 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %97 = call i32 @get_volumename(i8* %96)
  %98 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %99 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %101 = call i32 @get_volumeserialnumber(i8* %100)
  %102 = load %struct.record_logicaldisk*, %struct.record_logicaldisk** %8, align 8
  %103 = getelementptr inbounds %struct.record_logicaldisk, %struct.record_logicaldisk* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.table*, %struct.table** %4, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.expr*, %struct.expr** %5, align 8
  %107 = call i32 @match_row(%struct.table* %104, i32 %105, %struct.expr* %106, i32* %15)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %61
  %110 = load %struct.table*, %struct.table** %4, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @free_row_values(%struct.table* %110, i32 %111)
  br label %121

113:                                              ; preds = %61
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 40
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %113, %28
  br label %121

121:                                              ; preds = %120, %109, %52
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %25

124:                                              ; preds = %25
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.table*, %struct.table** %4, align 8
  %129 = getelementptr inbounds %struct.table, %struct.table* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %59, %22
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #2

declare dso_local i32 @GetDriveTypeW(i8*) #2

declare dso_local i32 @sprintfW(i8*, i8*, i8 signext) #2

declare dso_local i8* @heap_strdupW(i8*) #2

declare dso_local i32 @get_filesystem(i8*) #2

declare dso_local i32 @get_freespace(i8*, i32*) #2

declare dso_local i32 @get_volumename(i8*) #2

declare dso_local i32 @get_volumeserialnumber(i8*) #2

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
