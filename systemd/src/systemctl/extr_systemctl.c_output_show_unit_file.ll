; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_output_show_unit_file.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_output_show_unit_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FNM_NOESCAPE = common dso_local global i32 0, align 4
@arg_types = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i8**)* @output_show_unit_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_show_unit_file(%struct.TYPE_4__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  %11 = load i8**, i8*** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @basename(i32 %14)
  %16 = load i32, i32* @FNM_NOESCAPE, align 4
  %17 = call i32 @strv_fnmatch_or_empty(i8** %11, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  %21 = load i8**, i8*** @arg_types, align 8
  %22 = call i32 @strv_isempty(i8** %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @strrchr(i32 %27, i8 signext 46)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %54

32:                                               ; preds = %24
  %33 = load i8**, i8*** @arg_types, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i32 @strv_find(i8** %33, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %54

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i8**, i8*** %6, align 8
  %42 = call i32 @strv_isempty(i8** %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load i8**, i8*** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @unit_file_state_to_string(i32 %48)
  %50 = call i32 @strv_find(i8** %45, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %54

53:                                               ; preds = %44, %40
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %38, %31, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @strv_fnmatch_or_empty(i8**, i32, i32) #1

declare dso_local i32 @basename(i32) #1

declare dso_local i32 @strv_isempty(i8**) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @strv_find(i8**, i8*) #1

declare dso_local i8* @unit_file_state_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
