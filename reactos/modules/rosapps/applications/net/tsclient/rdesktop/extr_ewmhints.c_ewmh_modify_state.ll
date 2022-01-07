; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_ewmhints.c_ewmh_modify_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_ewmhints.c_ewmh_modify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64* }

@WithdrawnState = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"WM_STATE\00", align 1
@XA_ATOM = common dso_local global i32 0, align 4
@PropModeAppend = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@PropModeReplace = common dso_local global i32 0, align 4
@ClientMessage = common dso_local global i32 0, align 4
@_NET_WM_STATE_ADD = common dso_local global i64 0, align 8
@_NET_WM_STATE_REMOVE = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@SubstructureNotifyMask = common dso_local global i32 0, align 4
@SubstructureRedirectMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i64, i64)* @ewmh_modify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ewmh_modify_state(%struct.TYPE_11__* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [2 x i64], align 16
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i64, i64* @WithdrawnState, align 8
  store i64 %21, i64* %17, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @get_property_value(%struct.TYPE_11__* %22, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 64, i64* %15, i8** %16, i32 1)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = load i64, i64* %15, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %16, align 8
  %33 = bitcast i8* %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = call i32 @XFree(i8* %35)
  br label %37

37:                                               ; preds = %31, %28, %5
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* @WithdrawnState, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %149

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  store i64 %45, i64* %46, align 16
  store i64 1, i64* %15, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  store i64 %50, i64* %51, align 8
  store i64 2, i64* %15, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XA_ATOM, align 4
  %61 = load i32, i32* @PropModeAppend, align 4
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %63 = bitcast i64* %62 to i8*
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @XChangeProperty(i32 %55, i32 %56, i32 %59, i32 %60, i32 32, i32 %61, i8* %63, i64 %64)
  br label %148

66:                                               ; preds = %41
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @get_property_value(%struct.TYPE_11__* %67, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 64, i64* %15, i8** %16, i32 1)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %217

72:                                               ; preds = %66
  %73 = load i8*, i8** %16, align 8
  %74 = bitcast i8* %73 to i64*
  store i64* %74, i64** %19, align 8
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %129, %72
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %15, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %132

80:                                               ; preds = %75
  %81 = load i64*, i64** %19, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %99, label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %88
  %92 = load i64*, i64** %19, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %128

99:                                               ; preds = %91, %80
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %15, align 8
  %103 = sub i64 %102, 1
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load i64*, i64** %19, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64*, i64** %19, align 8
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %15, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = sub i64 %118, 1
  %120 = mul i64 8, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memmove(i64* %109, i64* %114, i32 %121)
  br label %123

123:                                              ; preds = %105, %99
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %15, align 8
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %20, align 4
  br label %128

128:                                              ; preds = %123, %91, %88
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %20, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %20, align 4
  br label %75

132:                                              ; preds = %75
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @XA_ATOM, align 4
  %141 = load i32, i32* @PropModeReplace, align 4
  %142 = load i64*, i64** %19, align 8
  %143 = bitcast i64* %142 to i8*
  %144 = load i64, i64* %15, align 8
  %145 = call i32 @XChangeProperty(i32 %135, i32 %136, i32 %139, i32 %140, i32 32, i32 %141, i8* %143, i64 %144)
  %146 = load i8*, i8** %16, align 8
  %147 = call i32 @XFree(i8* %146)
  br label %148

148:                                              ; preds = %132, %52
  store i32 0, i32* %6, align 4
  br label %217

149:                                              ; preds = %37
  %150 = load i32, i32* @ClientMessage, align 4
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 32, i32* %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %149
  %165 = load i64, i64* @_NET_WM_STATE_ADD, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  store i64 %165, i64* %170, align 8
  br label %178

171:                                              ; preds = %149
  %172 = load i64, i64* @_NET_WM_STATE_REMOVE, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  store i64 %172, i64* %177, align 8
  br label %178

178:                                              ; preds = %171, %164
  %179 = load i64, i64* %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  store i64 %179, i64* %184, align 8
  %185 = load i64, i64* %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 2
  store i64 %185, i64* %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 3
  store i64 0, i64* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 4
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @DefaultRootWindow(i32 %206)
  %208 = load i32, i32* @False, align 4
  %209 = load i32, i32* @SubstructureNotifyMask, align 4
  %210 = load i32, i32* @SubstructureRedirectMask, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @XSendEvent(i32 %203, i32 %207, i32 %208, i32 %211, %struct.TYPE_10__* %13)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %178
  store i32 -1, i32* %6, align 4
  br label %217

216:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %215, %148, %71
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i64 @get_property_value(%struct.TYPE_11__*, i32, i8*, i32, i64*, i8**, i32) #1

declare dso_local i32 @XFree(i8*) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @XSendEvent(i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @DefaultRootWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
