; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_events_short.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_events_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FM_EREPORT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".%09lld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@FM_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @zpool_do_events_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpool_do_events_short(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [26 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @FM_EREPORT_TIME, align 4
  %12 = call i64 @nvlist_lookup_int64_array(i32* %10, i32 %11, i64** %8, i32* %9)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @verify(i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i8 signext 32, i32 32)
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = bitcast i64* %19 to i32*
  %21 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %22 = call i32 @ctime_r(i32* %20, i8* %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = call i32 @strncpy(i8* %23, i8* %25, i32 6)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  %29 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 20
  %31 = call i32 @strncpy(i8* %28, i8* %30, i32 4)
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 12
  %34 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  %36 = call i32 @strncpy(i8* %33, i8* %35, i32 8)
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 20
  %39 = load i64*, i64** %8, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %51 = call i32 @printf(i8* %49, i8* %50)
  br label %56

52:                                               ; preds = %2
  %53 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %55 = call i32 @printf(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @FM_CLASS, align 4
  %59 = call i64 @nvlist_lookup_string(i32* %57, i32 %58, i8** %7)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @verify(i32 %61)
  %63 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @printf(i8* %63, i8* %64)
  ret void
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_int64_array(i32*, i32, i64**, i32*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @ctime_r(i32*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
