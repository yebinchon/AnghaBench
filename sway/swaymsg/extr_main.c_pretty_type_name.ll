; ModuleID = '/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_type_name.c'
source_filename = "/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"touchpad\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"tablet_pad\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Tablet pad\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"tablet_tool\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Tablet tool\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Touch\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@__const.pretty_type_name.type_names = private unnamed_addr constant [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0) }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pretty_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pretty_type_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [7 x %struct.anon], align 16
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = bitcast [7 x %struct.anon]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([7 x %struct.anon]* @__const.pretty_type_name.type_names to i8*), i64 112, i1 false)
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 7
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* %4, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* %4, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %29

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
