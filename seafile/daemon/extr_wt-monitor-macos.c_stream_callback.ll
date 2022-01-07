; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_stream_callback.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_stream_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Repo watch info not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%ld Change %llu in %s, flags %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64, i8*, i32*, i32*)* @stream_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_callback(i64 %0, i8* %1, i64 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %15, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i8**
  store i8** %24, i8*** %16, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_8__* @g_hash_table_lookup(i32 %27, i32 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %13, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %6
  %34 = call i32 @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %82

35:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %79, %35
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %36
  %42 = call i64 (...) @CFRunLoopGetCurrent()
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i8**, i8*** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @seaf_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %42, i32 %47, i8* %52, i32 %57)
  %59 = load i8**, i8*** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @process_one_event(i8* %63, %struct.TYPE_8__* %64, i32 %67, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %41
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %36

82:                                               ; preds = %33, %36
  ret void
}

declare dso_local %struct.TYPE_8__* @g_hash_table_lookup(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @seaf_debug(i8*, i64, i32, i8*, i32) #1

declare dso_local i64 @CFRunLoopGetCurrent(...) #1

declare dso_local i32 @process_one_event(i8*, %struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
