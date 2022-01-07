; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_xmlent.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_xmlent.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"This should not be modified 1234\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"R&eacute;mi&nbsp;Fran&ccedil;ois&nbsp;&amp;&nbsp;&Eacute;mile\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"R\C3\A9mi\C2\A0Fran\C3\A7ois\C2\A0&\C2\A0\C3\89mile\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"R&#233;mi&nbsp;Fran&#231;ois&nbsp;&amp;&nbsp;&#201;mile\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"R&#xe9;mi&nbsp;Fran&#xe7;ois&nbsp;&amp;&nbsp;&#xc9;mile\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"R&#xE9;mi&nbsp;Fran&#xE7;ois&nbsp;&amp;&nbsp;&#xC9;mile\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"&<\22'\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"&oelig\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"a'\C3\A0c\22\C3\A7e&\C3\A9n<\C3\B1o>\C3\B61:\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"a&#39;\C3\A0c&quot;\C3\A7e&amp;\C3\A9n&lt;\C3\B1o&gt;\C3\B61:\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\C2\81\C2\85\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"&#129;\C2\85\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @stdout, align 4
  %3 = load i32, i32* @_IONBF, align 4
  %4 = call i32 @setvbuf(i32 %2, i32* null, i32 %3, i32 0)
  %5 = call i32 @decode(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @decode(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @decode(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @decode(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @decode(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @decode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 @decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 @decode(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 @encode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @encode(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 @encode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %16 = call i32 @encode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @decode(i8*, i8*) #1

declare dso_local i32 @encode(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
