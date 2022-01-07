; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_find_process_in_dirent.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_find_process_in_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"/proc/%s/exe\00", align 1
@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*, i8*)* @find_process_in_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_process_in_dirent(%struct.dirent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dirent* %0, %struct.dirent** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %14 = load %struct.dirent*, %struct.dirent** %4, align 8
  %15 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @sprintf(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load i32, i32* @SEAF_PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* @SEAF_PATH_MAX, align 4
  %27 = call i64 @readlink(i8* %25, i8* %24, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %48

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %24, i64 %32
  store i8 0, i8* %33, align 1
  %34 = call i8* @g_path_get_basename(i8* %24)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @g_free(i8* %38)
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.dirent*, %struct.dirent** %4, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @atoi(i8* %45)
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %48

47:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42, %30
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i8* @g_path_get_basename(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
