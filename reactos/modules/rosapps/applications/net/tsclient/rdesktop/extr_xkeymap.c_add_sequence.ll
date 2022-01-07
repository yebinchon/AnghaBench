; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_add_sequence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_add_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }

@KEYMAP_MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\00\00", align 1
@NoSymbol = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Bad keysym \22%s\22 in keymap %s (ignoring line)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Adding sequence for keysym (0x%lx, %s) -> \00", align 1
@KEYMAP_MASK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"0x%x, \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i8*)* @add_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sequence(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @KEYMAP_MAX_LINE_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strspn(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcspn(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, 1
  %28 = call i32 @STRNCPY(i8* %17, i8* %25, i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %31, i8** %5, align 8
  %32 = call i64 @XStringToKeysym(i8* %17)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @NoSymbol, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @DEBUG_KBD(i8* %37)
  store i32 1, i32* %13, align 4
  br label %105

39:                                               ; preds = %3
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @DEBUG_KBD(i8* %17)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @KEYMAP_MASK, align 8
  %48 = and i64 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @free_key_translation(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @KEYMAP_MASK, align 8
  %58 = and i64 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 %58
  store %struct.TYPE_8__** %59, %struct.TYPE_8__*** %9, align 8
  br label %60

60:                                               ; preds = %86, %39
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strspn(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcspn(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %71, i64* %10, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  %75 = call i32 @STRNCPY(i8* %17, i8* %72, i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %5, align 8
  %79 = call i64 @XStringToKeysym(i8* %17)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @NoSymbol, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %64
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @DEBUG_KBD(i8* %84)
  store i32 1, i32* %13, align 4
  br label %105

86:                                               ; preds = %64
  %87 = call i64 @xmalloc(i32 16)
  %88 = inttoptr i64 %87 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %8, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call i32 @memset(%struct.TYPE_8__* %89, i32 0, i32 16)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store %struct.TYPE_8__** %94, %struct.TYPE_8__*** %9, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = trunc i64 %98 to i32
  %100 = zext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @DEBUG_KBD(i8* %101)
  br label %60

103:                                              ; preds = %60
  %104 = call i32 @DEBUG_KBD(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %103, %83, %36
  %106 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %13, align 4
  switch i32 %107, label %109 [
    i32 0, label %108
    i32 1, label %108
  ]

108:                                              ; preds = %105, %105
  ret void

109:                                              ; preds = %105
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @STRNCPY(i8*, i8*, i64) #2

declare dso_local i64 @XStringToKeysym(i8*) #2

declare dso_local i32 @DEBUG_KBD(i8*) #2

declare dso_local i32 @free_key_translation(%struct.TYPE_8__*) #2

declare dso_local i64 @xmalloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
