; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-doc.c_xps_lookup_link_target.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-doc.c_xps_lookup_link_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xps_lookup_link_target(i32* %0, i32* %1, i8* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 35)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  br label %26

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i8* [ %23, %21 ], [ %25, %24 ]
  store i8* %27, i8** %14, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %13, align 8
  br label %31

31:                                               ; preds = %47, %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @strcmp(i32 %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @fz_make_location(i32 0, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %53

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %13, align 8
  br label %31

51:                                               ; preds = %31
  %52 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %41
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fz_make_location(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
