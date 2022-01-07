; ModuleID = '/home/carl/AnghaBench/vlc/src/modules/extr_entry.c_vlc_plugin_get_symbol.c'
source_filename = "/home/carl/AnghaBench/vlc/src/modules/extr_entry.c_vlc_plugin_get_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_plugin_symbol = type { i8* }

@vlc_plugin_symbol_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @vlc_plugin_get_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_plugin_get_symbol(i8* %0, i8* %1, i8** noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.vlc_plugin_symbol*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %4, align 4
  br label %28

14:                                               ; preds = %3
  %15 = load i32, i32* @vlc_plugin_symbol_compare, align 4
  %16 = call i8** @tfind(i8** %6, i8** %5, i32 %15)
  store i8** %16, i8*** %8, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %28

20:                                               ; preds = %14
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.vlc_plugin_symbol*
  store %struct.vlc_plugin_symbol* %23, %struct.vlc_plugin_symbol** %9, align 8
  %24 = load %struct.vlc_plugin_symbol*, %struct.vlc_plugin_symbol** %9, align 8
  %25 = getelementptr inbounds %struct.vlc_plugin_symbol, %struct.vlc_plugin_symbol* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %19, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i8** @tfind(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
