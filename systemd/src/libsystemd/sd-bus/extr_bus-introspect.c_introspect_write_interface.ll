; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-introspect.c_introspect_write_interface.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-introspect.c_introspect_write_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.introspect = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_SD_BUS_VTABLE_END = common dso_local global i32 0, align 4
@SD_BUS_VTABLE_HIDDEN = common dso_local global i32 0, align 4
@SD_BUS_VTABLE_DEPRECATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"  <annotation name=\22org.freedesktop.DBus.Deprecated\22 value=\22true\22/>\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  <method name=\22%s\22>\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  </method>\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"  <property name=\22%s\22 type=\22%s\22 access=\22%s\22>\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"readwrite\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"  </property>\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"  <signal name=\22%s\22>\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"  </signal>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @introspect_write_interface(%struct.introspect* %0, %struct.introspect* %1) #0 {
  %3 = alloca %struct.introspect*, align 8
  %4 = alloca %struct.introspect*, align 8
  %5 = alloca %struct.introspect*, align 8
  %6 = alloca i8*, align 8
  store %struct.introspect* %0, %struct.introspect** %3, align 8
  store %struct.introspect* %1, %struct.introspect** %4, align 8
  %7 = load %struct.introspect*, %struct.introspect** %4, align 8
  store %struct.introspect* %7, %struct.introspect** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load %struct.introspect*, %struct.introspect** %3, align 8
  %9 = call i32 @assert(%struct.introspect* %8)
  %10 = load %struct.introspect*, %struct.introspect** %4, align 8
  %11 = call i32 @assert(%struct.introspect* %10)
  br label %12

12:                                               ; preds = %172, %2
  %13 = load %struct.introspect*, %struct.introspect** %4, align 8
  %14 = getelementptr inbounds %struct.introspect, %struct.introspect* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @_SD_BUS_VTABLE_END, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %176

18:                                               ; preds = %12
  %19 = load %struct.introspect*, %struct.introspect** %4, align 8
  %20 = getelementptr inbounds %struct.introspect, %struct.introspect* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.introspect*, %struct.introspect** %4, align 8
  %25 = getelementptr inbounds %struct.introspect, %struct.introspect* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SD_BUS_VTABLE_HIDDEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %172

31:                                               ; preds = %23, %18
  %32 = load %struct.introspect*, %struct.introspect** %4, align 8
  %33 = getelementptr inbounds %struct.introspect, %struct.introspect* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %171 [
    i32 129, label %35
    i32 132, label %48
    i32 131, label %97
    i32 128, label %97
    i32 130, label %130
  ]

35:                                               ; preds = %31
  %36 = load %struct.introspect*, %struct.introspect** %4, align 8
  %37 = getelementptr inbounds %struct.introspect, %struct.introspect* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SD_BUS_VTABLE_DEPRECATED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.introspect*, %struct.introspect** %3, align 8
  %44 = getelementptr inbounds %struct.introspect, %struct.introspect* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @fputs(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  br label %171

48:                                               ; preds = %31
  %49 = load %struct.introspect*, %struct.introspect** %3, align 8
  %50 = getelementptr inbounds %struct.introspect, %struct.introspect* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.introspect*, %struct.introspect** %4, align 8
  %53 = getelementptr inbounds %struct.introspect, %struct.introspect* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load %struct.introspect*, %struct.introspect** %5, align 8
  %59 = call i32 @bus_vtable_has_names(%struct.introspect* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load %struct.introspect*, %struct.introspect** %4, align 8
  %63 = getelementptr inbounds %struct.introspect, %struct.introspect* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @strempty(i32 %66)
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %61, %48
  %69 = load %struct.introspect*, %struct.introspect** %3, align 8
  %70 = load %struct.introspect*, %struct.introspect** %4, align 8
  %71 = getelementptr inbounds %struct.introspect, %struct.introspect* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @strempty(i32 %74)
  %76 = call i32 @introspect_write_arguments(%struct.introspect* %69, i8* %75, i8** %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.introspect*, %struct.introspect** %3, align 8
  %78 = load %struct.introspect*, %struct.introspect** %4, align 8
  %79 = getelementptr inbounds %struct.introspect, %struct.introspect* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @strempty(i32 %82)
  %84 = call i32 @introspect_write_arguments(%struct.introspect* %77, i8* %83, i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.introspect*, %struct.introspect** %3, align 8
  %86 = load %struct.introspect*, %struct.introspect** %4, align 8
  %87 = getelementptr inbounds %struct.introspect, %struct.introspect* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.introspect*, %struct.introspect** %4, align 8
  %90 = getelementptr inbounds %struct.introspect, %struct.introspect* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @introspect_write_flags(%struct.introspect* %85, i32 %88, i32 %91)
  %93 = load %struct.introspect*, %struct.introspect** %3, align 8
  %94 = getelementptr inbounds %struct.introspect, %struct.introspect* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %171

97:                                               ; preds = %31, %31
  %98 = load %struct.introspect*, %struct.introspect** %3, align 8
  %99 = getelementptr inbounds %struct.introspect, %struct.introspect* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.introspect*, %struct.introspect** %4, align 8
  %102 = getelementptr inbounds %struct.introspect, %struct.introspect* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.introspect*, %struct.introspect** %4, align 8
  %107 = getelementptr inbounds %struct.introspect, %struct.introspect* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.introspect*, %struct.introspect** %4, align 8
  %112 = getelementptr inbounds %struct.introspect, %struct.introspect* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 128
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %117 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %105, i8* %110, i8* %116)
  %118 = load %struct.introspect*, %struct.introspect** %3, align 8
  %119 = load %struct.introspect*, %struct.introspect** %4, align 8
  %120 = getelementptr inbounds %struct.introspect, %struct.introspect* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.introspect*, %struct.introspect** %4, align 8
  %123 = getelementptr inbounds %struct.introspect, %struct.introspect* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @introspect_write_flags(%struct.introspect* %118, i32 %121, i32 %124)
  %126 = load %struct.introspect*, %struct.introspect** %3, align 8
  %127 = getelementptr inbounds %struct.introspect, %struct.introspect* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  br label %171

130:                                              ; preds = %31
  %131 = load %struct.introspect*, %struct.introspect** %3, align 8
  %132 = getelementptr inbounds %struct.introspect, %struct.introspect* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.introspect*, %struct.introspect** %4, align 8
  %135 = getelementptr inbounds %struct.introspect, %struct.introspect* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %138)
  %140 = load %struct.introspect*, %struct.introspect** %5, align 8
  %141 = call i32 @bus_vtable_has_names(%struct.introspect* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %130
  %144 = load %struct.introspect*, %struct.introspect** %4, align 8
  %145 = getelementptr inbounds %struct.introspect, %struct.introspect* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @strempty(i32 %148)
  store i8* %149, i8** %6, align 8
  br label %150

150:                                              ; preds = %143, %130
  %151 = load %struct.introspect*, %struct.introspect** %3, align 8
  %152 = load %struct.introspect*, %struct.introspect** %4, align 8
  %153 = getelementptr inbounds %struct.introspect, %struct.introspect* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @strempty(i32 %156)
  %158 = call i32 @introspect_write_arguments(%struct.introspect* %151, i8* %157, i8** %6, i8* null)
  %159 = load %struct.introspect*, %struct.introspect** %3, align 8
  %160 = load %struct.introspect*, %struct.introspect** %4, align 8
  %161 = getelementptr inbounds %struct.introspect, %struct.introspect* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.introspect*, %struct.introspect** %4, align 8
  %164 = getelementptr inbounds %struct.introspect, %struct.introspect* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @introspect_write_flags(%struct.introspect* %159, i32 %162, i32 %165)
  %167 = load %struct.introspect*, %struct.introspect** %3, align 8
  %168 = getelementptr inbounds %struct.introspect, %struct.introspect* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %31, %150, %97, %68, %47
  br label %172

172:                                              ; preds = %171, %30
  %173 = load %struct.introspect*, %struct.introspect** %5, align 8
  %174 = load %struct.introspect*, %struct.introspect** %4, align 8
  %175 = call %struct.introspect* @bus_vtable_next(%struct.introspect* %173, %struct.introspect* %174)
  store %struct.introspect* %175, %struct.introspect** %4, align 8
  br label %12

176:                                              ; preds = %12
  ret i32 0
}

declare dso_local i32 @assert(%struct.introspect*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @bus_vtable_has_names(%struct.introspect*) #1

declare dso_local i8* @strempty(i32) #1

declare dso_local i32 @introspect_write_arguments(%struct.introspect*, i8*, i8**, i8*) #1

declare dso_local i32 @introspect_write_flags(%struct.introspect*, i32, i32) #1

declare dso_local %struct.introspect* @bus_vtable_next(%struct.introspect*, %struct.introspect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
