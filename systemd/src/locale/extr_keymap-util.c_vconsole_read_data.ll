; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_keymap-util.c_vconsole_read_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_keymap-util.c_vconsole_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"/etc/vconsole.conf\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"KEYMAP\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"KEYMAP_TOGGLE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vconsole_read_data(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %74

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sd_bus_message_unref(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @sd_bus_message_ref(i32* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  br label %27

27:                                               ; preds = %18, %2
  %28 = call i64 @stat(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.stat* %6)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* @errno, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %30
  %38 = load i64, i64* @USEC_INFINITY, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = call i32 @context_free_vconsole(%struct.TYPE_4__* %41)
  store i32 0, i32* %3, align 4
  br label %74

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = call i64 @timespec_load(i32* %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USEC_INFINITY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %74

58:                                               ; preds = %51, %43
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = call i32 @context_free_vconsole(%struct.TYPE_4__* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = call i32 @parse_env_file(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %57, %37, %34, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @sd_bus_message_unref(i32*) #1

declare dso_local i32* @sd_bus_message_ref(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @context_free_vconsole(%struct.TYPE_4__*) #1

declare dso_local i64 @timespec_load(i32*) #1

declare dso_local i32 @parse_env_file(i32*, i8*, i8*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
