; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_is_share_active.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_is_share_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@nfs_exportfs_temp_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @nfs_is_share_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_is_share_active(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = call i32 (...) @nfs_available()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %101

13:                                               ; preds = %1
  %14 = load i32, i32* @nfs_exportfs_temp_fd, align 4
  %15 = call i32 @dup(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @B_FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %101

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @fdopen(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @B_FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %101

26:                                               ; preds = %19
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i64 @fseek(i32* %27, i32 0, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i32, i32* @B_FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %101

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %96, %46, %35
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @fgets(i8* %37, i32 512, i32* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %97

41:                                               ; preds = %36
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %36

47:                                               ; preds = %41
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %49 = call i8* @strchr(i8* %48, i8 signext 9)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  store i8* %55, i8** %7, align 8
  br label %63

56:                                               ; preds = %47
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %56, %52
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %67 = icmp uge i8* %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ true, %68 ], [ %77, %73 ]
  br label %80

80:                                               ; preds = %78, %64
  %81 = phi i1 [ false, %64 ], [ %79, %78 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %7, align 8
  store i8 0, i8* %83, align 1
  br label %64

85:                                               ; preds = %80
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @strcmp(i8* %86, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = load i32, i32* @B_TRUE, align 4
  store i32 %95, i32* %2, align 4
  br label %101

96:                                               ; preds = %85
  br label %36

97:                                               ; preds = %36
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @fclose(i32* %98)
  %100 = load i32, i32* @B_FALSE, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %92, %31, %24, %17, %11
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @nfs_available(...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
