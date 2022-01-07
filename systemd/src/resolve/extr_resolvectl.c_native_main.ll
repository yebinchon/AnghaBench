; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolvectl.c_native_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolvectl.c_native_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@native_main.verbs = internal constant [20 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 148, i32 148, i32 0, i32 137 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 148, i32 148, i32 147, i32 129 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 2, i32 148, i32 0, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 4, i32 0, i32 130 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 148, i32 0, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 148, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 148, i32 1, i32 0, i32 143 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 148, i32 1, i32 0, i32 144 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 148, i32 1, i32 0, i32 146 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 148, i32 1, i32 0, i32 145 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 148, i32 148, i32 0, i32 141 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 148, i32 148, i32 0, i32 138 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 148, i32 3, i32 0, i32 142 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 148, i32 3, i32 0, i32 136 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 148, i32 3, i32 0, i32 135 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 148, i32 3, i32 0, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 148, i32 3, i32 0, i32 139 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 148, i32 148, i32 0, i32 134 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 148, i32 2, i32 0, i32 131 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"openpgp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tlsa\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"reset-statistics\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"flush-caches\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"reset-server-features\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"default-route\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"llmnr\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mdns\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"dnsovertls\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"dnssec\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"nta\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*)* @native_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_main(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @dispatch_verb(i32 %7, i8** %8, %struct.TYPE_3__* getelementptr inbounds ([20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* @native_main.verbs, i64 0, i64 0), i32* %9)
  ret i32 %10
}

declare dso_local i32 @dispatch_verb(i32, i8**, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
