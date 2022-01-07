; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_init_oid_header.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_init_oid_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oid_counter = common dso_local global i32 0, align 4
@oid_header = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_oid_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_oid_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @oid_counter, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %85

9:                                                ; preds = %0
  %10 = call i32 (...) @getpid()
  store i32 %10, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %12 = call i64 @gethostname(i8* %11, i32 256)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 256
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ false, %15 ], [ %25, %19 ]
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = shl i32 %30, 5
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 2
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %34, %39
  %41 = xor i32 %29, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %15

45:                                               ; preds = %26
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %2, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %9
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, 255
  %52 = load i32*, i32** @oid_header, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %2, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = load i32*, i32** @oid_header, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %2, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = load i32*, i32** @oid_header, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %1, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** @oid_header, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %1, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load i32*, i32** @oid_header, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @time(i32* null)
  %75 = xor i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = ptrtoint i32* %2 to i64
  %78 = xor i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %49
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* @oid_counter, align 4
  br label %85

85:                                               ; preds = %83, %8
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
