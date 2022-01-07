; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/compat/extr_compat.c_compat_nextfile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/compat/extr_compat.c_compat_nextfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_dir = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @compat_nextfile(%struct.compat_dir* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.compat_dir*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  store %struct.compat_dir* %0, %struct.compat_dir** %3, align 8
  %7 = load %struct.compat_dir*, %struct.compat_dir** %3, align 8
  %8 = icmp ne %struct.compat_dir* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %47

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %43, %10
  %12 = load %struct.compat_dir*, %struct.compat_dir** %3, align 8
  %13 = getelementptr inbounds %struct.compat_dir, %struct.compat_dir* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dirent* @readdir(i32 %14)
  store %struct.dirent* %15, %struct.dirent** %4, align 8
  %16 = icmp ne %struct.dirent* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = load %struct.compat_dir*, %struct.compat_dir** %3, align 8
  %19 = getelementptr inbounds %struct.compat_dir, %struct.compat_dir* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dirent*, %struct.dirent** %4, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @compat_catpath(i32 %20, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @stat(i8* %28, %struct.stat* %5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISREG(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load %struct.dirent*, %struct.dirent** %4, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @compat_strdup(i32 %41)
  store i8* %42, i8** %2, align 8
  br label %47

43:                                               ; preds = %31, %27, %17
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  br label %11

46:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %47

47:                                               ; preds = %46, %36, %9
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i8* @compat_catpath(i32, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @compat_strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
