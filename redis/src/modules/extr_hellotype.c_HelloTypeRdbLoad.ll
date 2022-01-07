; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeRdbLoad.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeRdbLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HelloTypeObject = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HelloTypeRdbLoad(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.HelloTypeObject*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %31

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @RedisModule_LoadUnsigned(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = call i8* (...) @createHelloTypeObject()
  %16 = bitcast i8* %15 to %struct.HelloTypeObject*
  store %struct.HelloTypeObject* %16, %struct.HelloTypeObject** %7, align 8
  br label %17

17:                                               ; preds = %21, %12
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @RedisModule_LoadSigned(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %7, align 8
  %25 = bitcast %struct.HelloTypeObject* %24 to i8*
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @HelloTypeInsert(i8* %25, i32 %26)
  br label %17

28:                                               ; preds = %17
  %29 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %7, align 8
  %30 = bitcast %struct.HelloTypeObject* %29 to i8*
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %28, %11
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i32 @RedisModule_LoadUnsigned(i32*) #1

declare dso_local i8* @createHelloTypeObject(...) #1

declare dso_local i32 @RedisModule_LoadSigned(i32*) #1

declare dso_local i32 @HelloTypeInsert(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
