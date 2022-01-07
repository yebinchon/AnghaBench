; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_cdromdrive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_cdromdrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_cdromdrive = type { i8*, i32, i32, i32, i8* }

@fill_cdromdrive.fmtW = internal constant [4 x i8] c"%c:\00", align 1
@__const.fill_cdromdrive.root = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@DRIVE_CDROM = common dso_local global i64 0, align 8
@cdromdrive_pnpdeviceidW = common dso_local global i8* null, align 8
@cdromdrive_mediatypeW = common dso_local global i32 0, align 4
@cdromdrive_nameW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_cdromdrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_cdromdrive(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca %struct.record_cdromdrive*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %14 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fill_cdromdrive.root, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 (...) @GetLogicalDrives()
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.table*, %struct.table** %4, align 8
  %18 = call i32 @resize_table(%struct.table* %17, i32 1, i32 32)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %21, i32* %3, align 4
  br label %106

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %96, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 26
  br i1 %25, label %26, label %99

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 65, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %38 = call i64 @GetDriveTypeW(i8* %37)
  %39 = load i64, i64* @DRIVE_CDROM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %96

42:                                               ; preds = %32
  %43 = load %struct.table*, %struct.table** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @resize_table(%struct.table* %43, i32 %45, i32 32)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %42
  %51 = load %struct.table*, %struct.table** %4, align 8
  %52 = getelementptr inbounds %struct.table, %struct.table* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.record_cdromdrive*
  store %struct.record_cdromdrive* %57, %struct.record_cdromdrive** %8, align 8
  %58 = load i8*, i8** @cdromdrive_pnpdeviceidW, align 8
  %59 = load %struct.record_cdromdrive*, %struct.record_cdromdrive** %8, align 8
  %60 = getelementptr inbounds %struct.record_cdromdrive, %struct.record_cdromdrive* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 65, %62
  %64 = trunc i32 %63 to i8
  %65 = call i32 @sprintfW(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fill_cdromdrive.fmtW, i64 0, i64 0), i8 signext %64)
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %67 = call i32 @heap_strdupW(i8* %66)
  %68 = load %struct.record_cdromdrive*, %struct.record_cdromdrive** %8, align 8
  %69 = getelementptr inbounds %struct.record_cdromdrive, %struct.record_cdromdrive* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @cdromdrive_mediatypeW, align 4
  %71 = load %struct.record_cdromdrive*, %struct.record_cdromdrive** %8, align 8
  %72 = getelementptr inbounds %struct.record_cdromdrive, %struct.record_cdromdrive* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @cdromdrive_nameW, align 4
  %74 = load %struct.record_cdromdrive*, %struct.record_cdromdrive** %8, align 8
  %75 = getelementptr inbounds %struct.record_cdromdrive, %struct.record_cdromdrive* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @cdromdrive_pnpdeviceidW, align 8
  %77 = load %struct.record_cdromdrive*, %struct.record_cdromdrive** %8, align 8
  %78 = getelementptr inbounds %struct.record_cdromdrive, %struct.record_cdromdrive* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.table*, %struct.table** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.expr*, %struct.expr** %5, align 8
  %82 = call i32 @match_row(%struct.table* %79, i32 %80, %struct.expr* %81, i32* %13)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %50
  %85 = load %struct.table*, %struct.table** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @free_row_values(%struct.table* %85, i32 %86)
  br label %96

88:                                               ; preds = %50
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 32
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %88, %26
  br label %96

96:                                               ; preds = %95, %84, %41
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %23

99:                                               ; preds = %23
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.table*, %struct.table** %4, align 8
  %104 = getelementptr inbounds %struct.table, %struct.table* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %99, %48, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #2

declare dso_local i64 @GetDriveTypeW(i8*) #2

declare dso_local i32 @sprintfW(i8*, i8*, i8 signext) #2

declare dso_local i32 @heap_strdupW(i8*) #2

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
