; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-seat-dbus.c_property_get_idle_since_hint.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-seat-dbus.c_property_get_idle_since_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"IdleSinceHint\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_idle_since_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_idle_since_hint(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @assert(i32* %24)
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @assert(i32* %26)
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @seat_get_idle_hint(i32* %28, %struct.TYPE_3__* %17)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %19, align 4
  store i32 %33, i32* %8, align 4
  br label %49

34:                                               ; preds = %7
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @streq(i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %44

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  store i32 %45, i32* %18, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @sd_bus_message_append(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %32
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @seat_get_idle_hint(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
