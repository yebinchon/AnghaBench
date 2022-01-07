; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_createximage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_createximage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i64, i8*, i32 }

@info = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ZPixmap = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"warn: could not XShmCreateImage\0A\00", align 1
@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"warn: could not shmget\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"warn: could not shmat\0A\00", align 1
@False = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"warn: could not XShmAttach\0A\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"fail: could not XCreateImage\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"fail: could not malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, i32*, %struct.TYPE_11__*, i32, i32, i32)* @createximage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @createximage(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @XShmQueryExtension(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %107

20:                                               ; preds = %6
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @info, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %107

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ZPixmap, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.TYPE_12__* @XShmCreateImage(i32* %25, i32* %26, i32 %27, i32 %28, i32* null, %struct.TYPE_11__* %29, i32 %30, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %14, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %107

38:                                               ; preds = %24
  %39 = load i32, i32* @IPC_PRIVATE, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load i32, i32* @IPC_CREAT, align 4
  %48 = or i32 %47, 511
  %49 = call i64 @shmget(i32 %39, i32 %46, i32 %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %38
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %58 = call i32 @XDestroyImage(%struct.TYPE_12__* %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %107

61:                                               ; preds = %38
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @shmat(i64 %64, i32* null, i32 0)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i8* %65, i8** %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, inttoptr (i64 -1 to i8*)
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %76 = call i32 @XDestroyImage(%struct.TYPE_12__* %75)
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %107

79:                                               ; preds = %61
  %80 = load i32, i32* @False, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = call i32 @XShmAttach(i32* %83, %struct.TYPE_11__* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @shmdt(i8* %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %94 = call i32 @XDestroyImage(%struct.TYPE_12__* %93)
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %107

97:                                               ; preds = %79
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @False, align 4
  %100 = call i32 @XSync(i32* %98, i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @IPC_RMID, align 4
  %105 = call i32 @shmctl(i64 %103, i32 %104, i32* null)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %7, align 8
  br label %140

107:                                              ; preds = %88, %74, %56, %35, %23, %19
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @info, i32 0, i32 0), align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ZPixmap, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.TYPE_12__* @XCreateImage(i32* %108, i32* %109, i32 %110, i32 %111, i32 0, i32* null, i32 %112, i32 %113, i32 32, i32 0)
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %14, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %116 = icmp ne %struct.TYPE_12__* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %107
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %120 = call i32 (...) @abort() #3
  unreachable

121:                                              ; preds = %107
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %122, %125
  %127 = call i8* @malloc(i32 %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %121
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @fprintf(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %137 = call i32 (...) @abort() #3
  unreachable

138:                                              ; preds = %121
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %139, %struct.TYPE_12__** %7, align 8
  br label %140

140:                                              ; preds = %138, %97
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %141
}

declare dso_local i32 @XShmQueryExtension(i32*) #1

declare dso_local %struct.TYPE_12__* @XShmCreateImage(i32*, i32*, i32, i32, i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @shmget(i32, i32, i32) #1

declare dso_local i32 @XDestroyImage(%struct.TYPE_12__*) #1

declare dso_local i8* @shmat(i64, i32*, i32) #1

declare dso_local i32 @XShmAttach(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @shmdt(i8*) #1

declare dso_local i32 @XSync(i32*, i32) #1

declare dso_local i32 @shmctl(i64, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @XCreateImage(i32*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
