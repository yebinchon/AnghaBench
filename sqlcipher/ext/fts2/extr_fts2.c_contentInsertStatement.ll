; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_contentInsertStatement.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_contentInsertStatement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"insert into %_content (rowid, \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c") values (?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c", ?\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @contentInsertStatement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @contentInsertStatement(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 @initStringBuffer(i32* %3)
  %6 = call i32 @append(i32* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @appendList(i32* %3, i32 %9, i32 %12)
  %14 = call i32 @append(i32* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %23, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = call i32 @append(i32* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %15

26:                                               ; preds = %15
  %27 = call i32 @append(i32* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i8* @stringBufferData(i32* %3)
  ret i8* %28
}

declare dso_local i32 @initStringBuffer(i32*) #1

declare dso_local i32 @append(i32*, i8*) #1

declare dso_local i32 @appendList(i32*, i32, i32) #1

declare dso_local i8* @stringBufferData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
