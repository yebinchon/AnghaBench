; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/leases/extr_leases.c_find_lease.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/leases/extr_leases.c_find_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@list = common dso_local global %struct.TYPE_8__* null, align 8
@STATIC = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Assigning Static IP! \0A\00", align 1
@PROCESSING = common dso_local global i8* null, align 8
@MAX_PROCESS_TIME = common dso_local global i8* null, align 8
@FREE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Assigning Dynamic IP! \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_lease(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -2, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %172

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @list, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  br label %15

15:                                               ; preds = %31, %13
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @maccmp(i32 %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @release_lease(%struct.TYPE_9__* %26, i8* %27, i32* %28)
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %9, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @list, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %9, align 8
  br label %37

37:                                               ; preds = %166, %35
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %170

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @maccmp(i32 %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %102, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STATIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @stdout, align 4
  %85 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %86 = load i8*, i8** @PROCESSING, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @MAX_PROCESS_TIME, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @maccpy(i32 %98, i32* %99)
  store i32 0, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %172

102:                                              ; preds = %47, %40
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FREE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %164

109:                                              ; preds = %102
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DYNAMIC, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %164

115:                                              ; preds = %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @stdout, align 4
  %147 = call i32 @fprintf(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i8*, i8** @PROCESSING, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** @MAX_PROCESS_TIME, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @maccpy(i32 %160, i32* %161)
  store i32 0, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %4, align 4
  br label %172

164:                                              ; preds = %109, %102
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %9, align 8
  br label %37

170:                                              ; preds = %37
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %115, %53, %12
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @maccmp(i32, i32*) #1

declare dso_local i32 @release_lease(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @maccpy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
