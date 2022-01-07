; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_Destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"attempt to destroy nonexistent variable \22%s\22\00", align 1
@varcmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @var_Destroy(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_7__* @vlc_internals(i32* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.TYPE_8__* @Lookup(i32* %12, i8* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @msg_Dbg(i32* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* @varcmp, align 4
  %39 = call i32 @tdelete(%struct.TYPE_8__* %35, i32* %37, i32 %38)
  br label %47

40:                                               ; preds = %21
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 4294967295
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %47

47:                                               ; preds = %40, %27
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = call i32 @Destroy(%struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %54, %48
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @vlc_internals(i32*) #1

declare dso_local %struct.TYPE_8__* @Lookup(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @tdelete(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @Destroy(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
