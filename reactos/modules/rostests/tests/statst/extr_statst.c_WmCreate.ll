; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/statst/extr_statst.c_WmCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/statst/extr_statst.c_WmCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"WM_CREATE (enter).\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test 1\00", align 1
@STATIC_CLASS = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@SS_BLACKRECT = common dso_local global i32 0, align 4
@AppInstance = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"test 2\00", align 1
@SS_BLACKFRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"test 3\00", align 1
@SS_GRAYRECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"test 4\00", align 1
@SS_GRAYFRAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"test 5\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"&Left-aligned text &static control window\00", align 1
@SS_LEFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"test 6\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"&Right-aligned text &static control window\00", align 1
@SS_RIGHT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"test 7\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"&Centered text &static control window\00", align 1
@SS_CENTER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"test 8\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"&No prefix and no word wrapping\00", align 1
@SS_LEFTNOWORDWRAP = common dso_local global i32 0, align 4
@SS_NOPREFIX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"test 9\00", align 1
@SS_WHITERECT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"test 10\00", align 1
@SS_WHITEFRAME = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"test 11\00", align 1
@SS_ETCHEDFRAME = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"test 12\00", align 1
@SS_ETCHEDHORZ = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"test 13\00", align 1
@SS_ETCHEDVERT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"test 14\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Sunken frame and word ellipsis\00", align 1
@SS_SUNKEN = common dso_local global i32 0, align 4
@SS_WORDELLIPSIS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"WM_CREATE (leave).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WmCreate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @STATIC_CLASS, align 4
  %7 = load i32, i32* @WS_CHILD, align 4
  %8 = load i32, i32* @WS_VISIBLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SS_BLACKRECT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @AppInstance, align 4
  %14 = call i32 @CreateWindowEx(i32 0, i32 %6, i8* null, i32 %11, i32 10, i32 10, i32 100, i32 20, i32 %12, i32* null, i32 %13, i32* null)
  %15 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @STATIC_CLASS, align 4
  %17 = load i32, i32* @WS_CHILD, align 4
  %18 = load i32, i32* @WS_VISIBLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SS_BLACKFRAME, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @AppInstance, align 4
  %24 = call i32 @CreateWindowEx(i32 0, i32 %16, i8* null, i32 %21, i32 10, i32 40, i32 100, i32 20, i32 %22, i32* null, i32 %23, i32* null)
  %25 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @STATIC_CLASS, align 4
  %27 = load i32, i32* @WS_CHILD, align 4
  %28 = load i32, i32* @WS_VISIBLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SS_GRAYRECT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @AppInstance, align 4
  %34 = call i32 @CreateWindowEx(i32 0, i32 %26, i8* null, i32 %31, i32 10, i32 70, i32 100, i32 20, i32 %32, i32* null, i32 %33, i32* null)
  %35 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* @STATIC_CLASS, align 4
  %37 = load i32, i32* @WS_CHILD, align 4
  %38 = load i32, i32* @WS_VISIBLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SS_GRAYFRAME, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @AppInstance, align 4
  %44 = call i32 @CreateWindowEx(i32 0, i32 %36, i8* null, i32 %41, i32 10, i32 100, i32 100, i32 20, i32 %42, i32* null, i32 %43, i32* null)
  %45 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @STATIC_CLASS, align 4
  %47 = load i32, i32* @WS_CHILD, align 4
  %48 = load i32, i32* @WS_VISIBLE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SS_LEFT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @AppInstance, align 4
  %54 = call i32 @CreateWindowEx(i32 0, i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %51, i32 10, i32 130, i32 100, i32 50, i32 %52, i32* null, i32 %53, i32* null)
  %55 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32, i32* @STATIC_CLASS, align 4
  %57 = load i32, i32* @WS_CHILD, align 4
  %58 = load i32, i32* @WS_VISIBLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SS_RIGHT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @AppInstance, align 4
  %64 = call i32 @CreateWindowEx(i32 0, i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %61, i32 10, i32 185, i32 100, i32 50, i32 %62, i32* null, i32 %63, i32* null)
  %65 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %66 = load i32, i32* @STATIC_CLASS, align 4
  %67 = load i32, i32* @WS_CHILD, align 4
  %68 = load i32, i32* @WS_VISIBLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SS_CENTER, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @AppInstance, align 4
  %74 = call i32 @CreateWindowEx(i32 0, i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %71, i32 10, i32 240, i32 100, i32 50, i32 %72, i32* null, i32 %73, i32* null)
  %75 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %76 = load i32, i32* @STATIC_CLASS, align 4
  %77 = load i32, i32* @WS_CHILD, align 4
  %78 = load i32, i32* @WS_VISIBLE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SS_LEFTNOWORDWRAP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SS_NOPREFIX, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @AppInstance, align 4
  %86 = call i32 @CreateWindowEx(i32 0, i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %83, i32 10, i32 295, i32 100, i32 20, i32 %84, i32* null, i32 %85, i32* null)
  %87 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %88 = load i32, i32* @STATIC_CLASS, align 4
  %89 = load i32, i32* @WS_CHILD, align 4
  %90 = load i32, i32* @WS_VISIBLE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SS_WHITERECT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @AppInstance, align 4
  %96 = call i32 @CreateWindowEx(i32 0, i32 %88, i8* null, i32 %93, i32 120, i32 10, i32 100, i32 20, i32 %94, i32* null, i32 %95, i32* null)
  %97 = call i32 @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %98 = load i32, i32* @STATIC_CLASS, align 4
  %99 = load i32, i32* @WS_CHILD, align 4
  %100 = load i32, i32* @WS_VISIBLE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SS_WHITEFRAME, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @AppInstance, align 4
  %106 = call i32 @CreateWindowEx(i32 0, i32 %98, i8* null, i32 %103, i32 120, i32 40, i32 100, i32 20, i32 %104, i32* null, i32 %105, i32* null)
  %107 = call i32 @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %108 = load i32, i32* @STATIC_CLASS, align 4
  %109 = load i32, i32* @WS_CHILD, align 4
  %110 = load i32, i32* @WS_VISIBLE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SS_ETCHEDFRAME, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @AppInstance, align 4
  %116 = call i32 @CreateWindowEx(i32 0, i32 %108, i8* null, i32 %113, i32 120, i32 70, i32 100, i32 20, i32 %114, i32* null, i32 %115, i32* null)
  %117 = call i32 @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %136, %1
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %119, 5
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load i32, i32* @STATIC_CLASS, align 4
  %123 = load i32, i32* @WS_CHILD, align 4
  %124 = load i32, i32* @WS_VISIBLE, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @SS_ETCHEDHORZ, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = mul nsw i64 4, %129
  %131 = add nsw i64 100, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @AppInstance, align 4
  %135 = call i32 @CreateWindowEx(i32 0, i32 %122, i8* null, i32 %127, i32 120, i32 %132, i32 100, i32 4, i32 %133, i32* null, i32 %134, i32* null)
  br label %136

136:                                              ; preds = %121
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %118

139:                                              ; preds = %118
  %140 = call i32 @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %159, %139
  %142 = load i32, i32* %3, align 4
  %143 = icmp slt i32 %142, 25
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i32, i32* @STATIC_CLASS, align 4
  %146 = load i32, i32* @WS_CHILD, align 4
  %147 = load i32, i32* @WS_VISIBLE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @SS_ETCHEDVERT, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 4, %152
  %154 = add nsw i64 120, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* %2, align 4
  %157 = load i32, i32* @AppInstance, align 4
  %158 = call i32 @CreateWindowEx(i32 0, i32 %145, i8* null, i32 %150, i32 %155, i32 130, i32 4, i32 20, i32 %156, i32* null, i32 %157, i32* null)
  br label %159

159:                                              ; preds = %144
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %141

162:                                              ; preds = %141
  %163 = call i32 @DPRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %164 = load i32, i32* @STATIC_CLASS, align 4
  %165 = load i32, i32* @WS_CHILD, align 4
  %166 = load i32, i32* @WS_VISIBLE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @SS_SUNKEN, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @SS_WORDELLIPSIS, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @AppInstance, align 4
  %174 = call i32 @CreateWindowEx(i32 0, i32 %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %171, i32 120, i32 160, i32 100, i32 20, i32 %172, i32* null, i32 %173, i32* null)
  %175 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @CreateWindowEx(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
