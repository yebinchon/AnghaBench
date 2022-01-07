; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seafile_from_json.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seafile_from_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [41 x i8] c"Failed to decompress seafile object %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to load seafile json object: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32)* @seafile_from_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @seafile_from_json(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @seaf_decompress(i8* %13, i32 %14, i32** %8, i32* %9)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32* null, i32** %4, align 8
  br label %40

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* %9, align 4
  %24 = call i32* @json_loadb(i8* %22, i32 %23, i32 0, %struct.TYPE_3__* %11)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @g_free(i32* %25)
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32* null, i32** %4, align 8
  br label %40

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @seafile_from_json_object(i8* %34, i32* %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @json_decref(i32* %37)
  %39 = load i32*, i32** %12, align 8
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %33, %29, %17
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

declare dso_local i64 @seaf_decompress(i8*, i32, i32**, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @seafile_from_json_object(i8*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
