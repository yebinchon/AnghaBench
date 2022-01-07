; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_resolve_link_property.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_resolve_link_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [21 x i8] c"Resolving link to %s\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Found more then 20 redirects for property. Stopping.\00", align 1
@rofi_theme = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Resolving link %s found: %s\00", align 1
@P_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @rofi_theme_resolve_link_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_theme_resolve_link_property(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i8*, ...) @g_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 20
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = call i32 @g_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %26, align 8
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @g_hash_table_contains(i64 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call %struct.TYPE_9__* @g_hash_table_lookup(i64 %42, i8* %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %6, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i8*, ...) @g_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @P_LINK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %39
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = icmp eq %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  call void @rofi_theme_resolve_link_property(%struct.TYPE_9__* %67, i32 %69)
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = icmp ne %struct.TYPE_9__* %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %87, align 8
  br label %119

88:                                               ; preds = %70
  br label %95

89:                                               ; preds = %39
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %94, align 8
  br label %119

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %32, %27
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = icmp ne %struct.TYPE_9__* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %112, align 8
  br label %119

113:                                              ; preds = %96
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %118, align 8
  br label %119

119:                                              ; preds = %113, %103, %89, %78, %20
  ret void
}

declare dso_local i32 @g_info(i8*, i8*, ...) #1

declare dso_local i32 @g_warning(i8*) #1

declare dso_local i64 @g_hash_table_contains(i64, i8*) #1

declare dso_local %struct.TYPE_9__* @g_hash_table_lookup(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
