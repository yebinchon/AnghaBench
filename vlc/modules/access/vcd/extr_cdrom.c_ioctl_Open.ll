; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_ioctl_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_ioctl_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ioctl_Open(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.stat, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %81

13:                                               ; preds = %2
  %14 = call %struct.TYPE_8__* @malloc(i32 24)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %81

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i8* null, i8** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  store i32 1, i32* %7, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @vlc_stat(i8* %26, %struct.stat* %9)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = call i32 @free(%struct.TYPE_8__* %30)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %81

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISBLK(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISCHR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = call i32 @OpenVCDImage(i32* %47, i8* %48, %struct.TYPE_8__* %49)
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %43
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 -1, i32* %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @vlc_open(i8* %54, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, -1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 0
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %51, %46
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strdup(i8* %71)
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = call i32 @free(%struct.TYPE_8__* %77)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %3, align 8
  br label %81

81:                                               ; preds = %79, %29, %17, %12
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %82
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @vlc_stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @OpenVCDImage(i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i64 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
