; ModuleID = '/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_pthread_attr_clone.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_pthread_attr_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pthread_attr_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pthread_attr_clone(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sched_param, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @pthread_attr_init(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @pthread_attr_getdetachstate(i32* %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pthread_attr_setdetachstate(i32* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %116

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @pthread_attr_getguardsize(i32* %38, i64* %8)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @pthread_attr_setguardsize(i32* %43, i64 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %116

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @pthread_attr_getinheritsched(i32* %51, i32* %9)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pthread_attr_setinheritsched(i32* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %116

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @pthread_attr_getschedparam(i32* %64, %struct.sched_param* %10)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @pthread_attr_setschedparam(i32* %69, %struct.sched_param* %10)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %116

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @pthread_attr_getschedpolicy(i32* %76, i32* %11)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @pthread_attr_setschedpolicy(i32* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %116

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @pthread_attr_getscope(i32* %89, i32* %12)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @pthread_attr_setscope(i32* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %116

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @pthread_attr_getstack(i32* %102, i8** %13, i64* %14)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32*, i32** %4, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @pthread_attr_setstack(i32* %107, i8* %108, i64 %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %116

115:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %120

116:                                              ; preds = %114, %100, %87, %74, %62, %49, %36
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @pthread_attr_destroy(i32* %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %115, %22
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_getdetachstate(i32*, i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_getguardsize(i32*, i64*) #1

declare dso_local i32 @pthread_attr_setguardsize(i32*, i64) #1

declare dso_local i32 @pthread_attr_getinheritsched(i32*, i32*) #1

declare dso_local i32 @pthread_attr_setinheritsched(i32*, i32) #1

declare dso_local i32 @pthread_attr_getschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @pthread_attr_getschedpolicy(i32*, i32*) #1

declare dso_local i32 @pthread_attr_setschedpolicy(i32*, i32) #1

declare dso_local i32 @pthread_attr_getscope(i32*, i32*) #1

declare dso_local i32 @pthread_attr_setscope(i32*, i32) #1

declare dso_local i32 @pthread_attr_getstack(i32*, i8**, i64*) #1

declare dso_local i32 @pthread_attr_setstack(i32*, i8*, i64) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
