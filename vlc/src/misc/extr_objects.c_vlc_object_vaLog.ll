; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_objects.c_vlc_object_vaLog.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_objects.c_vlc_object_vaLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"generic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_object_vaLog(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %39

21:                                               ; preds = %8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = call i8* @vlc_object_typename(%struct.TYPE_4__* %22)
  store i8* %23, i8** %17, align 8
  %24 = load i8*, i8** %17, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %17, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @vlc_vaLog(i32* %29, i32 %30, i8* %31, i8* %32, i8* %33, i32 %34, i8* %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %20
  ret void
}

declare dso_local i8* @vlc_object_typename(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_vaLog(i32*, i32, i8*, i8*, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
