; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_appid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_appid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"loading appid %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32*)* @load_appid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @load_appid(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call %struct.TYPE_8__* @msi_alloc_zero(i32 56)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @msi_dup_record_field(i32* %13, i32 1)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @debugstr_w(i8* %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @MSI_RecordGetString(i32* %22, i32 2)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 6
  %28 = call i32 @deformat_string(%struct.TYPE_7__* %24, i32 %25, i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @msi_dup_record_field(i32* %29, i32 3)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @msi_dup_record_field(i32* %33, i32 4)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @msi_dup_record_field(i32* %37, i32 5)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @MSI_RecordIsNull(i32* %41, i32 6)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @MSI_RecordIsNull(i32* %48, i32 7)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %3, align 8
  br label %61

61:                                               ; preds = %12, %11
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %62
}

declare dso_local %struct.TYPE_8__* @msi_alloc_zero(i32) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @deformat_string(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @MSI_RecordIsNull(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
