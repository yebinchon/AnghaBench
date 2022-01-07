; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCheckUserCredentials.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCheckUserCredentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@USER_FLAG_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USER_FLAG_NOPASS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLCheckUserCredentials(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sdslen(i32 %16)
  %18 = call %struct.TYPE_6__* @ACLGetUserByName(i32 %13, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i32, i32* @C_ERR, align 4
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @USER_FLAG_DISABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  %33 = load i32, i32* @C_ERR, align 4
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %24
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @USER_FLAG_NOPASS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @C_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @listRewind(i32 %46, i32* %7)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sdslen(i32 %53)
  %55 = call i32 @ACLHashPassword(i32 %50, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %70, %43
  %57 = call i32* @listNext(i32* %7)
  store i32* %57, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @listNodeValue(i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @time_independent_strcmp(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @sdsfree(i32 %67)
  %69 = load i32, i32* @C_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %59
  br label %56

71:                                               ; preds = %56
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @sdsfree(i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* @errno, align 4
  %75 = load i32, i32* @C_ERR, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %66, %41, %31, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_6__* @ACLGetUserByName(i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32 @ACLHashPassword(i32, i32) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local i32 @listNodeValue(i32*) #1

declare dso_local i32 @time_independent_strcmp(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
