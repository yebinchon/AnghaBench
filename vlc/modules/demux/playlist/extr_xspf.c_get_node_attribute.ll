; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_xspf.c_get_node_attribute.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_xspf.c_get_node_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @get_node_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_node_attribute(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @xml_ReaderNextAttr(i32* %9, i8** %7)
  store i8* %10, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %3, align 8
  br label %21

19:                                               ; preds = %12
  br label %8

20:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
