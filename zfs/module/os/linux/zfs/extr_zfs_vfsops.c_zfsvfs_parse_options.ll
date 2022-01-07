; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@zpl_tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @zfsvfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_parse_options(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %15 = load i32, i32* @KM_SLEEP, align 4
  %16 = call i32* @kmem_zalloc(i32 4, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %2
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca %struct.TYPE_4__, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @kmem_strdup(i8* %24)
  store i8* %25, i8** %12, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %64

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %60, %39, %31
  %33 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %32

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 16
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* @zpl_tokens, align 4
  %47 = call i32 @match_token(i8* %45, i32 %46, %struct.TYPE_4__* %23)
  store i32 %47, i32* %13, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @zfsvfs_parse_option(i8* %48, i32 %49, %struct.TYPE_4__* %23, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @kmem_strfree(i8* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @zfsvfs_vfs_free(i32* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %64

60:                                               ; preds = %40
  br label %32

61:                                               ; preds = %32
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @kmem_strfree(i8* %62)
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %61, %54, %28
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %14, align 4
  switch i32 %66, label %73 [
    i32 0, label %67
    i32 1, label %71
  ]

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32*, i32** %6, align 8
  %70 = load i32**, i32*** %5, align 8
  store i32* %69, i32** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %3, align 4
  ret i32 %72

73:                                               ; preds = %64
  unreachable
}

declare dso_local i32* @kmem_zalloc(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kmem_strdup(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @zfsvfs_parse_option(i8*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @kmem_strfree(i8*) #1

declare dso_local i32 @zfsvfs_vfs_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
