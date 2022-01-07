; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlLoadExternalEntity.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlLoadExternalEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"building canonical path\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlLoadExternalEntity(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @xmlNoNetExists(i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = call i64 @xmlCanonicPath(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @xmlIOErrMemory(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %38

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @xmlCurrentExternalEntityLoader(i8* %26, i8* %27, i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @xmlFree(i8* %30)
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %4, align 8
  br label %38

33:                                               ; preds = %12, %3
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @xmlCurrentExternalEntityLoader(i8* %34, i8* %35, i32 %36)
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %33, %25, %23
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local i64 @xmlNoNetExists(i8*) #1

declare dso_local i64 @xmlCanonicPath(i32*) #1

declare dso_local i32 @xmlIOErrMemory(i8*) #1

declare dso_local i32* @xmlCurrentExternalEntityLoader(i8*, i8*, i32) #1

declare dso_local i32 @xmlFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
