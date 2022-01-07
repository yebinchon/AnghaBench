; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_write_line.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_write_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [200 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %5 = call i32 @memset(i8* %4, i32 0, i32 200)
  %6 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strcpy(i8* %6, i8* %7)
  %9 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %10 = call i64 @strlen(i8* %9)
  %11 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %10
  store i8 13, i8* %11, align 1
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %13 = call i64 @strlen(i8* %12)
  %14 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 %13
  store i8 10, i8* %14, align 1
  %15 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %16 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %17 = call i64 @strlen(i8* %16)
  %18 = load i32, i32* @out, align 4
  %19 = call i32 @fwrite(i8* %15, i32 1, i64 %17, i32 %18)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
