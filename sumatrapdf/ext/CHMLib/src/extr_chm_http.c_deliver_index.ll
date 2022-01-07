; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_deliver_index.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_deliver_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }

@.str = private unnamed_addr constant [165 x i8] c"HTTP/1.1 200 OK\0D\0AConnection: close\0D\0AContent-Type: text/html\0D\0A\0D\0A<h2><u>CHM contents:</u></h2><body><table><tr><td><h5>Size:</h5></td><td><h5>File:</h5></td></tr><tt>\00", align 1
@CHM_ENUMERATE_ALL = common dso_local global i32 0, align 4
@_print_ui_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"<br>   *** ERROR ***\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"</tt> </table></body></html>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.chmFile*)* @deliver_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_index(i32* %0, %struct.chmFile* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.chmFile*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.chmFile* %1, %struct.chmFile** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @fprintf(i32* %5, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.chmFile*, %struct.chmFile** %4, align 8
  %8 = load i32, i32* @CHM_ENUMERATE_ALL, align 4
  %9 = load i32, i32* @_print_ui_index, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @chm_enumerate(%struct.chmFile* %7, i32 %8, i32 %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fprintf(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @fprintf(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @chm_enumerate(%struct.chmFile*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
