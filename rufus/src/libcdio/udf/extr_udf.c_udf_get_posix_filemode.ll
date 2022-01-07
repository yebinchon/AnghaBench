; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf.c_udf_get_posix_filemode.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf.c_udf_get_posix_filemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FE_PERM_U_READ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@FE_PERM_U_WRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@FE_PERM_U_EXEC = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@FE_PERM_G_EXEC = common dso_local global i32 0, align 4
@FE_PERM_G_READ = common dso_local global i32 0, align 4
@FE_PERM_G_WRITE = common dso_local global i32 0, align 4
@FE_PERM_O_EXEC = common dso_local global i32 0, align 4
@FE_PERM_O_READ = common dso_local global i32 0, align 4
@FE_PERM_O_WRITE = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETGID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETUID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_STICKY = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_posix_filemode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @udf_get_file_entry(i32* %6, %struct.TYPE_5__* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uint32_from_le(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FE_PERM_U_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @S_IRUSR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %9
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FE_PERM_U_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @S_IWUSR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FE_PERM_U_EXEC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @S_IXUSR, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %59 [
    i32 131, label %43
    i32 130, label %47
    i32 132, label %51
    i32 133, label %55
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @S_IFDIR, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %39
  %48 = load i32, i32* @S_IFREG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %60

51:                                               ; preds = %39
  %52 = load i32, i32* @S_IFCHR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %39
  %56 = load i32, i32* @S_IFBLK, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %55, %51, %47, %43
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @udf_get_file_entry(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uint32_from_le(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
