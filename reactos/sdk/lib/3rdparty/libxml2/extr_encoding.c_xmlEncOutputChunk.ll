; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlEncOutputChunk.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlEncOutputChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i32*, i8*, i32*)*, i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32*, i8*, i32*)* @xmlEncOutputChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlEncOutputChunk(%struct.TYPE_3__* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)** %13, align 8
  %15 = icmp ne i32 (i8*, i32*, i8*, i32*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)** %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 %19(i8* %20, i32* %21, i8* %22, i32* %23)
  store i32 %24, i32* %11, align 4
  br label %28

25:                                               ; preds = %5
  %26 = load i32*, i32** %8, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 0, i32* %27, align 4
  store i32 -4, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %16
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
