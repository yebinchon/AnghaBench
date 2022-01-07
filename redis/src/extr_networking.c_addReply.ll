; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@C_OK = common dso_local global i64 0, align 8
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Wrong obj->encoding in addReply()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReply(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @prepareClientToWrite(i32* %7)
  %9 = load i64, i64* @C_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %67

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = call i64 @sdsEncodedObject(%struct.TYPE_4__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @sdslen(i8* %23)
  %25 = call i64 @_addReplyToBuffer(i32* %17, i8* %20, i64 %24)
  %26 = load i64, i64* @C_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @sdslen(i8* %35)
  %37 = call i32 @_addReplyProtoToList(i32* %29, i8* %32, i64 %36)
  br label %38

38:                                               ; preds = %28, %16
  br label %67

39:                                               ; preds = %12
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = call i64 @ll2string(i8* %46, i32 32, i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @_addReplyToBuffer(i32* %52, i8* %53, i64 %54)
  %56 = load i64, i64* @C_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @_addReplyProtoToList(i32* %59, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %45
  br label %66

64:                                               ; preds = %39
  %65 = call i32 @serverPanic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %11, %66, %38
  ret void
}

declare dso_local i64 @prepareClientToWrite(i32*) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_4__*) #1

declare dso_local i64 @_addReplyToBuffer(i32*, i8*, i64) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @_addReplyProtoToList(i32*, i8*, i64) #1

declare dso_local i64 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
