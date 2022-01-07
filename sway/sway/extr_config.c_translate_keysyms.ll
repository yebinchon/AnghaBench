; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_translate_keysyms.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_translate_keysyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.sway_mode** }
%struct.sway_mode = type { i32*, i32* }
%struct.input_config = type { i32 }
%struct.xkb_rule_names = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Translated keysyms using config for device '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @translate_keysyms(%struct.input_config* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  %3 = alloca %struct.xkb_rule_names, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_mode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.input_config* %0, %struct.input_config** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @keysym_translation_state_destroy(i32 %10)
  %12 = bitcast %struct.xkb_rule_names* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.input_config*, %struct.input_config** %2, align 8
  %14 = call i32 @input_config_fill_rule_names(%struct.input_config* %13, %struct.xkb_rule_names* %3)
  %15 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @keysym_translation_state_create(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %20
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.sway_mode**, %struct.sway_mode*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sway_mode*, %struct.sway_mode** %33, i64 %35
  %37 = load %struct.sway_mode*, %struct.sway_mode** %36, align 8
  store %struct.sway_mode* %37, %struct.sway_mode** %5, align 8
  %38 = call i32* (...) @create_list()
  store i32* %38, i32** %6, align 8
  %39 = call i32* (...) @create_list()
  store i32* %39, i32** %7, align 8
  %40 = load %struct.sway_mode*, %struct.sway_mode** %5, align 8
  %41 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @translate_binding_list(i32* %42, i32* %43, i32* %44)
  %46 = load %struct.sway_mode*, %struct.sway_mode** %5, align 8
  %47 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @translate_binding_list(i32* %48, i32* %49, i32* %50)
  %52 = load %struct.sway_mode*, %struct.sway_mode** %5, align 8
  %53 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @list_free(i32* %54)
  %56 = load %struct.sway_mode*, %struct.sway_mode** %5, align 8
  %57 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @list_free(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.sway_mode*, %struct.sway_mode** %5, align 8
  %62 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.sway_mode*, %struct.sway_mode** %5, align 8
  %65 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %28
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %20

69:                                               ; preds = %20
  %70 = load i32, i32* @SWAY_DEBUG, align 4
  %71 = load %struct.input_config*, %struct.input_config** %2, align 8
  %72 = getelementptr inbounds %struct.input_config, %struct.input_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sway_log(i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %73)
  ret void
}

declare dso_local i32 @keysym_translation_state_destroy(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @input_config_fill_rule_names(%struct.input_config*, %struct.xkb_rule_names*) #1

declare dso_local i32 @keysym_translation_state_create(i32) #1

declare dso_local i32* @create_list(...) #1

declare dso_local i32 @translate_binding_list(i32*, i32*, i32*) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
