; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_create_new_dent.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_create_new_dent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, %struct.TYPE_7__*, i8*, %struct.TYPE_8__*)* @create_new_dent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_new_dent(i32* %0, i8* %1, i8* %2, %struct.TYPE_7__* %3, i8* %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca [41 x i8], align 16
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %12, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @g_free(i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @g_strdup(i8* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = call i32 @add_dent_to_dir(i32* %26, %struct.TYPE_8__* %27)
  br label %50

29:                                               ; preds = %6
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %32 = call i32 @rawdata_to_hex(i8* %30, i8* %31, i32 20)
  %33 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @create_ce_mode(i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_8__* @changeset_dirent_new(i8* %33, i32 %37, i8* %38, i32 %41, i8* %42, i32 %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %14, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %49 = call i32 @add_dent_to_dir(i32* %47, %struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @g_free(i32) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @add_dent_to_dir(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @rawdata_to_hex(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @changeset_dirent_new(i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
