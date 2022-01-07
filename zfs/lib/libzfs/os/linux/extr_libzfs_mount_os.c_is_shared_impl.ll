; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_is_shared_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_is_shared_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@SHARED_NOT_SHARED = common dso_local global i32 0, align 4
@ZFS_SHARETAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@proto_table = common dso_local global %struct.TYPE_5__* null, align 8
@SHARED_NFS = common dso_local global i32 0, align 4
@SHARED_SMB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_shared_impl(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SHARED_NOT_SHARED, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %89

23:                                               ; preds = %3
  %24 = load i32, i32* @ZFS_SHARETAB, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @freopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @SHARED_NOT_SHARED, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %89

32:                                               ; preds = %23
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i32 @fseek(i32* %35, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %86, %67, %60, %48, %32
  %39 = trunc i64 %14 to i32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @fgets(i8* %16, i32 %39, i32* %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %87

45:                                               ; preds = %38
  %46 = call i8* @strchr(i8* %16, i8 signext 9)
  store i8* %46, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %38

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %16, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 9)
  store i8* %58, i8** %10, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %38

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 9)
  store i8* %65, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %38

68:                                               ; preds = %61
  %69 = load i8*, i8** %10, align 8
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @proto_table, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %70, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i64, i64* %7, align 8
  switch i64 %79, label %84 [
    i64 129, label %80
    i64 128, label %82
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* @SHARED_NFS, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %89

82:                                               ; preds = %78
  %83 = load i32, i32* @SHARED_SMB, align 4
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %89

84:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %89

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %49
  br label %38

87:                                               ; preds = %38
  %88 = load i32, i32* @SHARED_NOT_SHARED, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %84, %82, %80, %30, %21
  %90 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @freopen(i32, i8*, i32*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
