; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-user-dbus.c_property_get_idle_since_hint.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-user-dbus.c_property_get_idle_since_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@DUAL_TIMESTAMP_NULL = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"IdleSinceHint\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_idle_since_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_idle_since_hint(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %15, align 8
  %20 = bitcast %struct.TYPE_4__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_4__* @DUAL_TIMESTAMP_NULL to i8*), i64 8, i1 false)
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @assert(i32* %23)
  %25 = load i32*, i32** %15, align 8
  %26 = call i32 @assert(i32* %25)
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @user_get_idle_hint(i32* %27, %struct.TYPE_4__* %16)
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @streq(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %38

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %34, %32 ], [ %37, %35 ]
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @sd_bus_message_append(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32*) #2

declare dso_local i32 @user_get_idle_hint(i32*, %struct.TYPE_4__*) #2

declare dso_local i64 @streq(i8*, i8*) #2

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
