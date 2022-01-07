; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file.c_vlc_http_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.vlc_http_resource = type { i32* }
%struct.vlc_http_file = type { i64 }

@vlc_http_error = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @vlc_http_file_read(%struct.vlc_http_resource* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.vlc_http_resource*, align 8
  %4 = alloca %struct.vlc_http_file*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %6 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %7 = bitcast %struct.vlc_http_resource* %6 to %struct.vlc_http_file*
  store %struct.vlc_http_file* %7, %struct.vlc_http_file** %4, align 8
  %8 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %9 = call %struct.TYPE_5__* @vlc_http_res_read(%struct.vlc_http_resource* %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vlc_http_error, align 8
  %12 = icmp eq %struct.TYPE_5__* %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %15 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %20 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @vlc_http_msg_can_seek(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.vlc_http_file*, %struct.vlc_http_file** %4, align 8
  %26 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %29 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @vlc_http_msg_get_file_size(i32* %30)
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %35 = load %struct.vlc_http_file*, %struct.vlc_http_file** %4, align 8
  %36 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @vlc_http_file_seek(%struct.vlc_http_resource* %34, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %42 = call %struct.TYPE_5__* @vlc_http_res_read(%struct.vlc_http_resource* %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %5, align 8
  br label %43

43:                                               ; preds = %40, %33, %24, %18, %13
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vlc_http_error, align 8
  %46 = icmp eq %struct.TYPE_5__* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %62

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %62

53:                                               ; preds = %49
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vlc_http_file*, %struct.vlc_http_file** %4, align 8
  %58 = getelementptr inbounds %struct.vlc_http_file, %struct.vlc_http_file* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %2, align 8
  br label %62

62:                                               ; preds = %53, %52, %47
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %63
}

declare dso_local %struct.TYPE_5__* @vlc_http_res_read(%struct.vlc_http_resource*) #1

declare dso_local i64 @vlc_http_msg_can_seek(i32*) #1

declare dso_local i64 @vlc_http_msg_get_file_size(i32*) #1

declare dso_local i64 @vlc_http_file_seek(%struct.vlc_http_resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
