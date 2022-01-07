; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_compute_canonicalized_length.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_compute_canonicalized_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"(%p %x): Beginning to compute canonicalized length for URI %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"(%p %x): Failed to compute URI scheme length.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"(%p %x): Failed to compute URI hierpart length.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"(%p %x): Failed to compute query string length.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"(%p %x): Failed to compute fragment length.\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"(%p %x): Finished computing canonicalized URI length. length=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @compute_canonicalized_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_canonicalized_length(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 @memset(%struct.TYPE_16__* %6, i32 0, i32 4)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @debugstr_w(i32 %12)
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %8, i32 %9, i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @canonicalize_scheme(%struct.TYPE_15__* %15, %struct.TYPE_16__* %6, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %21, i32 %22)
  store i32 -1, i32* %3, align 4
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @canonicalize_hierpart(%struct.TYPE_15__* %25, %struct.TYPE_16__* %6, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %31, i32 %32)
  store i32 -1, i32* %3, align 4
  br label %62

34:                                               ; preds = %24
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @canonicalize_query(%struct.TYPE_15__* %35, %struct.TYPE_16__* %6, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %41, i32 %42)
  store i32 -1, i32* %3, align 4
  br label %62

44:                                               ; preds = %34
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @canonicalize_fragment(%struct.TYPE_15__* %45, %struct.TYPE_16__* %6, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %51, i32 %52)
  store i32 -1, i32* %3, align 4
  br label %62

54:                                               ; preds = %44
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_15__* %55, i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %50, %40, %30, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @canonicalize_scheme(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ERR(i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @canonicalize_hierpart(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @canonicalize_query(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @canonicalize_fragment(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
