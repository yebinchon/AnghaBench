; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/xml/extr_libxml.c_ReaderNextAttr.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/xml/extr_libxml.c_ReaderNextAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8**)* @ReaderNextAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ReaderNextAttr(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @xmlTextReaderMoveToNextAttribute(i32 %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @xmlTextReaderConstName(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @xmlTextReaderConstValue(i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %2
  store i8* null, i8** %3, align 8
  br label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i8**, i8*** %5, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i32 @xmlTextReaderMoveToNextAttribute(i32) #1

declare dso_local i32* @xmlTextReaderConstName(i32) #1

declare dso_local i32* @xmlTextReaderConstValue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
