; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_transcode.c_jpip_to_jp2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_transcode.c_jpip_to_jp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @jpip_to_jp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpip_to_jp2(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i32, i32* @OPJ_TRUE, align 4
  %6 = call i32* @init_jpipdecoder(i32 %5)
  store i32* %6, i32** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @fread_jpip(i8* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @decode_jpip(i32* %15)
  %17 = load i8**, i8*** %3, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fwrite_jp2k(i8* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %26

24:                                               ; preds = %14
  %25 = call i32 @destroy_jpipdecoder(i32** %4)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %23, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32* @init_jpipdecoder(i32) #1

declare dso_local i32 @fread_jpip(i8*, i32*) #1

declare dso_local i32 @decode_jpip(i32*) #1

declare dso_local i32 @fwrite_jp2k(i8*, i32*) #1

declare dso_local i32 @destroy_jpipdecoder(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
