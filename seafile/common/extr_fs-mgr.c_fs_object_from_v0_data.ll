; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_fs_object_from_v0_data.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_fs_object_from_v0_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAF_METADATA_TYPE_FILE = common dso_local global i32 0, align 4
@SEAF_METADATA_TYPE_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid object type %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fs_object_from_v0_data(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @parse_metadata_type_v0(i32* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SEAF_METADATA_TYPE_FILE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @seafile_from_v0_data(i8* %16, i32* %17, i32 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %4, align 8
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SEAF_METADATA_TYPE_DIR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @seaf_dir_from_v0_data(i8* %26, i32* %27, i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %4, align 8
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @seaf_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32* null, i32** %4, align 8
  br label %34

34:                                               ; preds = %31, %25, %15
  %35 = load i32*, i32** %4, align 8
  ret i32* %35
}

declare dso_local i32 @parse_metadata_type_v0(i32*, i32) #1

declare dso_local i64 @seafile_from_v0_data(i8*, i32*, i32) #1

declare dso_local i64 @seaf_dir_from_v0_data(i8*, i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
